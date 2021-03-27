{-# OPTIONS_HADDOCK hide #-}
module Polysemy.Log.Data.Severity where

-- |A log message's severity, or log level.
data Severity =
  Trace
  |
  Debug
  |
  Info
  |
  Warn
  |
  Error
  |
  Crit
  deriving (Eq, Show, Enum)
