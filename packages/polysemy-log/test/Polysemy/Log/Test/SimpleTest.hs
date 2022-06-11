module Polysemy.Log.Test.SimpleTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)

import Polysemy.Log.Atomic (interpretLogAtomic)
import qualified Polysemy.Log.Effect.Log as Log
import Polysemy.Log.Effect.Log (Log)
import Polysemy.Log.Data.LogMessage (LogMessage(LogMessage))
import Polysemy.Log.Data.Severity (Severity(Crit, Debug))

prog ::
  Members [Log, AtomicState [LogMessage]] r =>
  Sem r [LogMessage]
prog = do
  Log.debug "debug"
  Log.crit "critical"
  atomicGet

target :: [LogMessage]
target =
  [LogMessage Crit "critical", LogMessage Debug "debug"]

test_simple :: UnitTest
test_simple =
  runTestAuto do
    assertEq @_ @IO target =<< interpretLogAtomic prog
