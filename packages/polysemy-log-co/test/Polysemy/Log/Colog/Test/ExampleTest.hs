module Polysemy.Log.Colog.Test.ExampleTest where

import Colog (logTextStdout)
import Colog.Polysemy (runLogAction)

import Polysemy.Log.Colog (interpretDataLogColog, interpretLogStdout)
import qualified Polysemy.Log.Effect.DataLog as DataLog
import Polysemy.Log.Effect.DataLog (DataLog)
import qualified Polysemy.Log.Effect.Log as Log
import Polysemy.Log.Effect.Log (Log)

progSimple ::
  Member Log r =>
  Sem r ()
progSimple = do
  Log.debug "debug"
  Log.warn "warn"

data Message =
  Message {
    severity :: Text,
    message :: Text
  }
  deriving stock (Eq, Show)

progData ::
  Member (DataLog Message) r =>
  Sem r ()
progData = do
  DataLog.dataLog (Message "warn" "warning!")
  DataLog.local (\ msg@Message{message} -> msg {message = "context: " <> message}) do
    DataLog.dataLog (Message "error" "segfault!")

main :: IO ()
main =
  runM do
    interpretLogStdout progSimple
    runLogAction @IO (contramap message logTextStdout) $ interpretDataLogColog @Message progData
