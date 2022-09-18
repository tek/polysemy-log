-- |Description: Internal
module Polysemy.Log.Data.LogMessage where

import Polysemy.Log.Data.Severity (Severity)

-- |User-specified part of the default logging data, consisting of a severity level like /warning/, /error/, /debug/,
-- and a plain text message.
data LogMessage =
  LogMessage {
    severity :: !Severity,
    message :: Text
  }
  deriving stock (Eq, Show)
