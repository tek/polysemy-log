module Polysemy.Log.Test.DataLogTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)

import Polysemy.Log.Atomic (interpretDataLogAtomic)
import qualified Polysemy.Log.Effect.DataLog as DataLog
import Polysemy.Log.Effect.DataLog (DataLog)

data CustomLog =
  User Text
  |
  Fatal Int
  deriving stock (Eq, Show)

prog ::
  Members [DataLog CustomLog, AtomicState [CustomLog]] r =>
  Sem r [CustomLog]
prog = do
  DataLog.dataLog (User "user")
  DataLog.dataLog (Fatal 5)
  atomicGet

target :: [CustomLog]
target =
  [Fatal 5, User "user"]

test_dataLog :: UnitTest
test_dataLog =
  runTestAuto do
    assertEq @_ @IO target =<< interpretDataLogAtomic @CustomLog prog
