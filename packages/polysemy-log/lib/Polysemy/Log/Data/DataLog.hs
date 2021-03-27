module Polysemy.Log.Data.DataLog where

data DataLog a :: Effect where
  DataLog :: a -> DataLog a m ()

makeSem ''DataLog
