-- |Description: Internal
module Polysemy.Log.Conc where

import Control.Concurrent.STM.TBMQueue (TBMQueue, closeTBMQueue, newTBMQueueIO, readTBMQueue, writeTBMQueue)
import Polysemy (interceptH, runT, subsume)
import Polysemy.Async (Async, async)
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Resource (Resource, bracket)

import qualified Polysemy.Log.Data.DataLog as DataLog
import Polysemy.Log.Data.DataLog (DataLog(DataLog, Local))

-- |Intercept 'DataLog' for concurrent processing.
-- This does not send any action to the ultimate interpreter but writes all log messages to the provided queue.
-- 'Local' has to be handled here, otherwise this will not be called for actions in higher-order thunks.
interceptDataLogConcWithLocal ::
  ∀ msg r a .
  Members [DataLog msg, Embed IO] r =>
  (msg -> msg) ->
  TBMQueue msg ->
  Sem r a ->
  Sem r a
interceptDataLogConcWithLocal context queue =
  interceptH \case
    DataLog msg ->
      liftT (atomically (writeTBMQueue queue (context msg)))
    Local f ma ->
      raise . interceptDataLogConcWithLocal (f . context) queue . subsume =<< runT ma
{-# INLINE interceptDataLogConcWithLocal #-}

-- |Intercept 'DataLog' for concurrent processing.
interceptDataLogConcWith ::
  ∀ msg r a .
  Members [DataLog msg, Embed IO] r =>
  TBMQueue msg ->
  Sem r a ->
  Sem r a
interceptDataLogConcWith =
  interceptDataLogConcWithLocal id
{-# INLINE interceptDataLogConcWith #-}

-- |Part of 'interceptDataLogConc'.
-- Loop as long as the proided queue is open and relay all dequeued messages to the ultimate interpreter, thereby
-- forcing the logging implementation to work in this thread.
loggerThread ::
  ∀ msg r .
  Members [DataLog msg, Embed IO] r =>
  TBMQueue msg ->
  Sem r ()
loggerThread queue = do
  spin
  where
    spin =
      atomically (readTBMQueue queue) >>= \case
        Nothing -> pure ()
        Just msg -> do
          DataLog.dataLog @msg msg
          spin

-- |Part of 'interceptDataLogConc'.
-- Create a queue and start a thread that reads messages from it, calling the logging implementation.
acquireQueue ::
  ∀ msg r .
  Members [DataLog msg, Async, Embed IO] r =>
  Int ->
  Sem r (TBMQueue msg)
acquireQueue maxQueued = do
  queue <- embed (newTBMQueueIO maxQueued)
  !_ <- async (loggerThread queue)
  pure queue

-- |Intercept 'DataLog' for concurrent processing.
-- Creates a queue and starts a worker thread.
-- All log messages received by the interceptor in 'interceptDataLogConcWithLocal' are written to the queue and sent to
-- the next 'DataLog' interpreter when the thread reads from the queue.
--
-- Since this is an interceptor, it will not remove the effect from the stack, but relay it to another interpreter:
--
-- @
-- interpretDataLogAtomic (interceptDataLogConc (DataLog.dataLog "message"))
-- @
interceptDataLogConc ::
  ∀ msg r a .
  Members [DataLog msg, Resource, Async, Embed IO] r =>
  -- |Queue size. When the queue fills up, the interceptor will block.
  Int ->
  Sem r a ->
  Sem r a
interceptDataLogConc maxQueued sem = do
  bracket (acquireQueue maxQueued) (atomically . closeTBMQueue) \ queue ->
    interceptDataLogConcWith @msg queue sem
{-# INLINE interceptDataLogConc #-}
