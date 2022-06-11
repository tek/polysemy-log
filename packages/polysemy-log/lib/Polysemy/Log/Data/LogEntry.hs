-- |Description: Internal
module Polysemy.Log.Data.LogEntry where

import Data.Time (UTCTime)
import Data.Time.Calendar (Day)
import GHC.Stack (CallStack, callStack)
import qualified Polysemy.Time as Time
import Polysemy.Time (GhcTime)

-- |Metadata wrapper for a log message.
data LogEntry a =
  LogEntry {
    message :: !a,
    -- |The time at which the log entry was created.
    time :: !UTCTime,
    -- |The call stack of the function in which the entry was created.
    source :: !CallStack
  }
  deriving stock (Show)

-- |Add call stack and timestamp to a message and wrap it with 'LogEntry'.
annotate ::
  HasCallStack =>
  Member GhcTime r =>
  a ->
  Sem r (LogEntry a)
annotate msg = do
  time <- Time.now @UTCTime @Day
  pure (LogEntry msg time callStack)
