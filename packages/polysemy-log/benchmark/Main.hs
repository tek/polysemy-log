module Main where

import Polysemy.Conc (runConc)
import Polysemy.Log.Data.Severity (Severity (Error))
import qualified Polysemy.Log.Effect.Log as Log
import Polysemy.Log.Stdout (interpretLogStdoutLevelConc)

main :: IO ()
main =
  runConc $ interpretLogStdoutLevelConc (Just Error) do
    for_ @[] [1..500000] \ (i :: Int) ->
      Log.warn ("line " <> show i)
