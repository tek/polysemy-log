{-# OPTIONS_HADDOCK hide #-}
module Polysemy.Log.Data.DataLog where

-- |Adapter for a logging backend.
--
-- Usually this is reinterpreted into an effect like those from /co-log/ or /di/, but it can be used purely for testing.
-- This effect is basically identical to 'Polysemy.Output.Output' and serves only as a nominal component.
data DataLog a :: Effect where
  -- |Schedule an arbitrary value for logging.
  DataLog :: a -> DataLog a m ()

makeSem ''DataLog
