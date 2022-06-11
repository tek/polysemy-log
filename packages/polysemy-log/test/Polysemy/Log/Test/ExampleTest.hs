{-# options_ghc -fplugin=Polysemy.Plugin #-}

module Polysemy.Log.Test.ExampleTest where

import Polysemy.Conc (runConc)

import qualified Polysemy.Log as Log
import Polysemy.Log (DataLog, Log, interpretDataLogStdout, interpretLogStdoutConc)
import qualified Polysemy.Log.Effect.DataLog as DataLog

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
  runConc do
    interpretLogStdoutConc progSimple
    interpretDataLogStdout progData
