module Polysemy.Log.Test.LocalTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)

import Polysemy.Log.Atomic (interpretDataLogAtomic)
import Polysemy.Log.Data.LogMessage (LogMessage (LogMessage))
import Polysemy.Log.Data.Severity (Severity (Debug))
import qualified Polysemy.Log.Effect.DataLog as DataLog
import Polysemy.Log.Effect.DataLog (DataLog)

data Context =
  Context {
    context :: [Text],
    message :: LogMessage
  }
  deriving stock (Eq, Show)

log ::
  Member (DataLog Context) r =>
  Severity ->
  Text ->
  Sem r ()
log severity msg =
  DataLog.dataLog (Context [] (LogMessage severity msg))

pushContext ::
  Member (DataLog Context) r =>
  [Text] ->
  Sem r a ->
  Sem r a
pushContext ctx =
  DataLog.local push
  where
    push (Context c m) =
      Context (ctx <> c) m

prog ::
  Members [DataLog Context, AtomicState [Context]] r =>
  Sem r [Context]
prog = do
  log Debug "0"
  pushContext ["level2", "level1"] do
    log Debug "2"
    pushContext ["level3"] do
      log Debug "3"
  atomicGet

target :: [Context]
target =
  [
    Context ["level3", "level2", "level1"] (LogMessage Debug "3"),
    Context ["level2", "level1"] (LogMessage Debug "2"),
    Context [] (LogMessage Debug "0")
  ]

test_local :: UnitTest
test_local =
  runTestAuto do
    assertEq @_ @IO target =<< interpretDataLogAtomic @Context prog
