{-# options_haddock prune #-}

-- |Description: Internal
module Polysemy.Log.Data.DataLog where

import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage)

-- |Structural logs, used as a backend for the simpler 'Text' log effect, 'Polysemy.Log.Log'.
--
-- Can also be used on its own, or reinterpreted into an effect like those from /co-log/ or /di/.
data DataLog a :: Effect where
  -- |Schedule an arbitrary value for logging.
  DataLog :: a -> DataLog a m ()
  -- |Stores the provided function in the interpreter and applies it to all log messages emitted within the higher-order
  -- thunk that's the second argument.
  Local :: (a -> a) -> m b -> DataLog a m b

makeSem ''DataLog

-- |Alias for the logger with the default message type used by 'Polysemy.Log.Log'.
type Logger =
  DataLog (LogEntry LogMessage)
