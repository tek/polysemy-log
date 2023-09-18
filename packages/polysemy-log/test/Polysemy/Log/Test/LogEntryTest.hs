module Polysemy.Log.Test.LogEntryTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)

import Polysemy.Log.Atomic (interpretDataLogAtomic)
import qualified Polysemy.Log.Effect.Log as Log
import Polysemy.Log.Effect.Log (Log)
import qualified Polysemy.Log.Data.LogEntry as LogEntry
import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage (LogMessage))
import Polysemy.Log.Data.Severity (Severity (Crit, Debug))
import Polysemy.Log.Format (formatCaller)
import Polysemy.Log.Log (interpretLogDataLog')

prog ::
  Members [Log, AtomicState [LogEntry LogMessage]] r =>
  Sem r [LogEntry LogMessage]
prog = do
  Log.debug "debug"
  Log.crit "crit"
  atomicGet

target :: [LogMessage]
target =
  [LogMessage Crit "crit", LogMessage Debug "debug"]

sourceTarget :: [Text]
sourceTarget =
  [
    "P.L.T.LogEntryTest#20",
    "P.L.T.LogEntryTest#19"
  ]

test_logEntry :: UnitTest
test_logEntry =
  runTestAuto do
    msgs <- interpretDataLogAtomic @(LogEntry LogMessage) (interpretLogDataLog' prog)
    assertEq @_ @IO target ((.message) <$> msgs)
    assertEq @_ @IO sourceTarget (formatCaller . (.source) <$> msgs)
