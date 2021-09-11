-- |Description: Internal
module Polysemy.Log.Conc where

import Polysemy (interceptH, runT, subsume)
import Polysemy.Async (Async, async)
import Polysemy.Conc (Queue, Race, interpretQueueTBM)
import qualified Polysemy.Conc.Queue as Queue
import Polysemy.Conc.Queue.Result (resultToMaybe)
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Resource (Resource)

import qualified Polysemy.Log.Data.DataLog as DataLog
import Polysemy.Log.Data.DataLog (DataLog (DataLog, Local))

-- |Intercept 'DataLog' for concurrent processing.
-- This does not send any action to the ultimate interpreter but writes all log messages to the provided queue.
-- 'Local' has to be handled here, otherwise this will not be called for actions in higher-order thunks.
interceptDataLogConcWithLocal ::
  ∀ msg r a .
  Members [Queue msg, DataLog msg] r =>
  (msg -> msg) ->
  Sem r a ->
  Sem r a
interceptDataLogConcWithLocal context =
  interceptH \case
    DataLog msg ->
      liftT (Queue.write (context msg))
    Local f ma ->
      raise . interceptDataLogConcWithLocal (f . context) . subsume =<< runT ma
{-# INLINE interceptDataLogConcWithLocal #-}

-- |Intercept 'DataLog' for concurrent processing.
interceptDataLogConcWith ::
  ∀ msg r a .
  Members [Queue msg, DataLog msg] r =>
  Sem r a ->
  Sem r a
interceptDataLogConcWith =
  interceptDataLogConcWithLocal @msg id
{-# INLINE interceptDataLogConcWith #-}

-- |Part of 'interceptDataLogConc'.
-- Loop as long as the proided queue is open and relay all dequeued messages to the ultimate interpreter, thereby
-- forcing the logging implementation to work in this thread.
loggerThread ::
  ∀ msg r .
  Members [Queue msg, DataLog msg] r =>
  Sem r ()
loggerThread = do
  spin
  where
    spin = do
      next <- Queue.read
      for_ (resultToMaybe next) \ msg -> do
        DataLog.dataLog @msg msg
        spin

-- |Intercept 'DataLog' for concurrent processing.
-- Creates a queue and starts a worker thread.
-- All log messages received by the interceptor in 'interceptDataLogConcWithLocal' are written to the queue and sent to
-- the next 'DataLog' interpreter when the thread reads from the queue.
--
-- Since this is an interceptor, it will not remove the effect from the stack, but relay it to another interpreter:
--
-- @
-- interpretDataLogAtomic (interceptDataLogConc 64 (DataLog.dataLog "message"))
-- @
interceptDataLogConc ::
  ∀ msg r a .
  Members [DataLog msg, Resource, Async, Race, Embed IO] r =>
  -- |Queue size. When the queue fills up, the interceptor will block.
  Int ->
  Sem r a ->
  Sem r a
interceptDataLogConc maxQueued sem = do
  interpretQueueTBM @msg maxQueued do
    !_ <- async (loggerThread @msg)
    interceptDataLogConcWith @msg (raise sem)
{-# INLINE interceptDataLogConc #-}
