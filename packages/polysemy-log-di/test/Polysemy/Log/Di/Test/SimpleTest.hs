module Polysemy.Log.Di.Test.SimpleTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)

import qualified Polysemy.Log.Effect.Log as Log
import Polysemy.Log.Effect.Log (Log)
import qualified Polysemy.Log.Data.LogEntry as LogEntry (LogEntry(..))
import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage(LogMessage))
import qualified Polysemy.Log.Data.Severity as Severity
import Polysemy.Log.Data.Severity (Severity)
import Polysemy.Log.Di.Atomic (interpretDiAtomic)
import Polysemy.Log.Di.Di (interpretLogDi')

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

test_simpleDi :: UnitTest
test_simpleDi = do
  runTestAuto do
    msgs <- interpretDiAtomic @Severity @() @(LogEntry LogMessage) (interpretLogDi' @() prog)
    assertEq @_ @IO target ((.message) <$> msgs)
