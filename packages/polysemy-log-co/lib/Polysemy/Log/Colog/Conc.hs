-- |Description: Internal
module Polysemy.Log.Colog.Conc where

import qualified Colog
import Colog (LogAction)
import Colog.Concurrent (convertToLogAction, defCapacity, forkBackgroundLogger, killBackgroundLogger)
import Colog.Concurrent.Internal (Capacity)
import qualified Colog.Polysemy as Colog
import Colog.Polysemy (runLogAction)

import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Format (formatLogEntry)

-- |Interpret 'Colog.Log' using /co-log/'s concurrent logger with the provided 'LogAction'.
interpretCologConcNativeWith ::
  ∀ msg r .
  Members [Resource, Embed IO] r =>
  Capacity ->
  LogAction IO msg ->
  IO () ->
  InterpreterFor (Colog.Log msg) r
interpretCologConcNativeWith capacity action flush sem = do
  bracket (embed (forkBackgroundLogger capacity action flush)) (embed . killBackgroundLogger) use
  where
    use worker =
      runLogAction (convertToLogAction @IO worker) sem
{-# inline interpretCologConcNativeWith #-}

-- |Interpret 'Colog.Log' using /co-log/'s concurrent logger with the default message and formatting.
interpretCologConcNative ::
  Members [Resource, Embed IO] r =>
  InterpreterFor (Colog.Log (LogEntry LogMessage)) r
interpretCologConcNative =
  interpretCologConcNativeWith defCapacity (contramap formatLogEntry Colog.logTextStdout) unit
{-# inline interpretCologConcNative #-}
