-- |Description: Internal
module Polysemy.Log.Data.Severity where

import qualified Data.Text as Text

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
  deriving stock (Eq, Show, Enum, Ord)

-- |Parse a 'Text' into a 'Severity'.
parseSeverity :: Text -> Maybe Severity
parseSeverity =
  Text.toLower >>> \case
    "trace" -> Just Trace
    "debug" -> Just Debug
    "info" -> Just Info
    "warn" -> Just Warn
    "error" -> Just Error
    "crit" -> Just Crit
    _ -> Nothing
