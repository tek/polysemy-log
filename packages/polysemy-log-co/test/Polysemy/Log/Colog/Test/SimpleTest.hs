module Polysemy.Log.Colog.Test.SimpleTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)
import Polysemy.Time (interpretTimeGhc)

import Polysemy.Log.Colog.Atomic (interpretCologAtomic)
import Polysemy.Log.Colog.Colog (interpretLogColog)
import qualified Polysemy.Log.Effect.Log as Log
import Polysemy.Log.Effect.Log (Log)
import qualified Polysemy.Log.Data.LogEntry as LogEntry (LogEntry(..))
import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage(LogMessage))
import qualified Polysemy.Log.Data.Severity as Severity

prog ::
  Members [Log, AtomicState [LogEntry LogMessage]] r =>
  Sem r [LogEntry LogMessage]
prog = do
  Log.debug "debug"
  Log.warn "warn"
  atomicGet

target :: [LogMessage]
target =
  [LogMessage Severity.Warn "warn", LogMessage Severity.Debug "debug"]

test_simpleColog :: UnitTest
test_simpleColog =
  runTestAuto do
    msgs <- interpretCologAtomic @(LogEntry LogMessage) (interpretTimeGhc (interpretLogColog prog))
    assertEq @_ @IO target (LogEntry.message <$> msgs)
