module Main where

import Polysemy.Log.Di.Test.SimpleTest (test_simpleDi)
import Polysemy.Test (unitTest)
import Test.Tasty (TestTree, defaultMain, testGroup)

tests :: TestTree
tests =
  testGroup "di" [
    unitTest "simple" test_simpleDi
  ]

main :: IO ()
main =
  defaultMain tests
