module Main where

import Polysemy.Log.Colog.Test.ConcTest (test_concColog)
import Polysemy.Log.Colog.Test.SimpleTest (test_simpleColog)
import Polysemy.Test (unitTest)
import Test.Tasty (TestTree, defaultMain, testGroup)

tests :: TestTree
tests =
  testGroup "colog" [
    unitTest "simple" test_simpleColog,
    unitTest "conc" test_concColog
  ]

main :: IO ()
main =
  defaultMain tests
