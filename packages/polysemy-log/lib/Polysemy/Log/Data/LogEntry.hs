module Polysemy.Log.Data.LogEntry where

import Data.Time (UTCTime)
import Data.Time.Calendar (Day)
import qualified Polysemy.Time as Time
import Polysemy.Time (GhcTime)

data LogEntry a =
  LogEntry {
    message :: !a,
    time :: !UTCTime,
    source :: !CallStack
  }
  deriving (Show)

annotate ::
  HasCallStack =>
  Member GhcTime r =>
  a ->
  Sem r (LogEntry a)
annotate msg = do
  time <- Time.now @UTCTime @Day
  pure (LogEntry msg time callStack)
