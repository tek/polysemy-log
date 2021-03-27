module Polysemy.Log.Colog.Conc where

import qualified Colog
import Colog (LogAction, convertToLogAction, defCapacity, forkBackgroundLogger, killBackgroundLogger)
import Colog.Concurrent.Internal (Capacity)
import qualified Colog.Polysemy as Colog
import Colog.Polysemy (runLogAction)
import Polysemy.Resource (Resource, bracket)

import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Format (formatLogEntry)

interpretCologConcWith ::
  ∀ msg r .
  Members [Resource, Embed IO] r =>
  Capacity ->
  LogAction IO msg ->
  InterpreterFor (Colog.Log msg) r
interpretCologConcWith capacity action sem = do
  bracket (embed (forkBackgroundLogger capacity action)) (embed . killBackgroundLogger) run
  where
    run worker =
      runLogAction (convertToLogAction @IO worker) sem

interpretCologConc ::
  Members [Resource, Embed IO] r =>
  InterpreterFor (Colog.Log (LogEntry LogMessage)) r
interpretCologConc =
  interpretCologConcWith defCapacity (contramap formatLogEntry Colog.logTextStdout)
