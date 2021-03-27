module Polysemy.Log.Data.Severity where

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
