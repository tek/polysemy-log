module Main where

import Polysemy.Log.Test.ConcTest (test_conc)
import Polysemy.Log.Test.DataLogTest (test_dataLog)
import Polysemy.Log.Test.LocalTest (test_local)
import Polysemy.Log.Test.LogEntryTest (test_logEntry)
import Polysemy.Log.Test.SimpleTest (test_simple)
import Polysemy.Test (unitTest)
import Test.Tasty (TestTree, defaultMain, testGroup)

tests :: TestTree
tests =
  testGroup "core" [
    unitTest "simple" test_simple,
    unitTest "data" test_dataLog,
    unitTest "local" test_local,
    unitTest "entry" test_logEntry,
    unitTest "conc" test_conc
    ]

main :: IO ()
main =
  defaultMain tests
