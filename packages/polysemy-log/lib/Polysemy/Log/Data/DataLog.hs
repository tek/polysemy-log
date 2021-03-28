{-# options_haddock prune #-}
-- |Description: Internal

module Polysemy.Log.Data.DataLog where

-- |Adapter for a logging backend.
--
-- Usually this is reinterpreted into an effect like those from /co-log/ or /di/, but it can be used purely for testing.
data DataLog a :: Effect where
  -- |Schedule an arbitrary value for logging.
  DataLog :: a -> DataLog a m ()
  -- |Stores the provided function in the interpreter and applies it to all log messages emitted within the higher-order
  -- thunk that's the second argument.
  Local :: (a -> a) -> m b -> DataLog a m b

makeSem ''DataLog
