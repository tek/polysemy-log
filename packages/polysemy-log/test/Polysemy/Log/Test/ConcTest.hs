module Polysemy.Log.Test.ConcTest where

import Data.Time (Day, UTCTime)
import Polysemy.Conc (interpretRace)
import Polysemy.Test (UnitTest, assertEq, runTestAuto)
import qualified Polysemy.Time as Time
import Polysemy.Time (GhcTime, MilliSeconds (MilliSeconds), interpretTimeGhc)

import Polysemy.Log.Atomic (interpretDataLogAtomic)
import Polysemy.Log.Conc (interceptDataLogConc)
import qualified Polysemy.Log.Effect.DataLog as DataLog
import Polysemy.Log.Effect.DataLog (DataLog)

data Context =
  Context {
    context :: [Text],
    message :: Text
  }
  deriving stock (Eq, Show)

prog ::
  Members [DataLog Context, GhcTime, AtomicState [Context]] r =>
  Sem r [Context]
prog = do
  DataLog.dataLog (Context [] "1")
  DataLog.local push do
    DataLog.dataLog (Context [] "2")
    DataLog.dataLog (Context [] "3")
  DataLog.dataLog (Context [] "4")
  Time.sleep @UTCTime @Day (MilliSeconds 100)
  atomicGet
  where
    push (Context c m) =
      Context ("context" : c) m

target :: [Context]
target =
  [Context [] "4", Context ["context"] "3", Context ["context"] "2", Context [] "1"]

test_conc :: UnitTest
test_conc =
  runTestAuto do
    msgs <-
      asyncToIOFinal $
      interpretRace $
      interpretTimeGhc $
      interpretDataLogAtomic @Context $
      interceptDataLogConc @Context 1 $
      prog
    assertEq @_ @IO target msgs
