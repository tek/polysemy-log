module Polysemy.Log.Data.LogMessage where

import Polysemy.Log.Data.Severity (Severity)

data LogMessage =
  LogMessage {
    severity :: !Severity,
    message :: !Text
  }
  deriving (Eq, Show)
