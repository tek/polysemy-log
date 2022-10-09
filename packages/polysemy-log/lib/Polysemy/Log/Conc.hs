-- |Description: Internal
module Polysemy.Log.Conc where

import qualified Control.Concurrent.Async as Base
import qualified Polysemy.Conc as Conc
import Polysemy.Conc (Queue, Race, interpretQueueTBM)
import qualified Polysemy.Conc.Queue as Queue
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Time (Seconds (Seconds))

import qualified Polysemy.Log.Effect.DataLog as DataLog
import Polysemy.Log.Effect.DataLog (DataLog (DataLog, Local))

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
{-# inline interceptDataLogConcWithLocal #-}

-- |Intercept 'DataLog' for concurrent processing.
interceptDataLogConcWith ::
  ∀ msg r a .
  Members [Queue msg, DataLog msg] r =>
  Sem r a ->
  Sem r a
interceptDataLogConcWith =
  interceptDataLogConcWithLocal @msg id
{-# inline interceptDataLogConcWith #-}

-- |Part of 'interceptDataLogConc'.
-- Loop as long as the provided queue is open and relay all dequeued messages to the ultimate interpreter, thereby
-- forcing the logging implementation to work in this thread.
loggerThread ::
  ∀ msg r .
  Members [Queue msg, DataLog msg] r =>
  Sem r ()
loggerThread =
  spin
  where
    spin = do
      next <- Queue.readMaybe
      for_ next \ msg -> do
        DataLog.dataLog @msg msg
      when (isJust next) spin

-- |Close the concurrent logger's queue and wait for one second to allow it to process any messages that have been
-- queued.
finalize ::
  ∀ msg r .
  Members [Queue msg, Resource, Async, Race, Embed IO] r =>
  Base.Async (Maybe ()) ->
  Sem r ()
finalize handle =
  Conc.timeoutU (Seconds 1) do
    Queue.close @msg
    void (await handle)

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
    !handle <- async (loggerThread @msg)
    finally (interceptDataLogConcWith @msg (raise sem)) (finalize @msg handle)
{-# inline interceptDataLogConc #-}
