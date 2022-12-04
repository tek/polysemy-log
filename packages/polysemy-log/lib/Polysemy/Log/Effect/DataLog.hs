{-# options_haddock prune #-}

-- |Description: Internal
module Polysemy.Log.Effect.DataLog where

import Polysemy.Time (GhcTime)
import Prelude hiding (local)

import Polysemy.Log.Data.LogEntry (LogEntry, annotate)
import Polysemy.Log.Data.LogMessage (LogMessage (LogMessage))
import Polysemy.Log.Data.Severity (Severity (Crit, Debug, Error, Info, Trace, Warn))

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

-- |Log a text message with the given severity.
-- Basic 'Sem' constructor.
log ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Severity ->
  Text ->
  Sem r ()
log severity message =
  withFrozenCallStack do
    send . DataLog =<< annotate (LogMessage severity message)
{-# inline log #-}

-- |Log a text message with the 'Trace' severity.
trace ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Text ->
  Sem r ()
trace =
  withFrozenCallStack (log Trace)
{-# inline trace #-}

-- |Log a text message with the 'Debug' severity.
debug ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Text ->
  Sem r ()
debug =
  withFrozenCallStack (log Debug)
{-# inline debug #-}

-- |Log a text message with the 'Info' severity.
info ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Text ->
  Sem r ()
info =
  withFrozenCallStack (log Info)
{-# inline info #-}

-- |Log a text message with the 'Warn' severity.
warn ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Text ->
  Sem r ()
warn =
  withFrozenCallStack (log Warn)
{-# inline warn #-}

-- |Log a text message with the 'Polysemy.Log.Data.Severity.Error' severity.
error ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Text ->
  Sem r ()
error =
  withFrozenCallStack (log Error)
{-# inline error #-}

-- |Log a text message with the 'Crit' severity.
crit ::
  HasCallStack =>
  Members [Logger, GhcTime] r =>
  Text ->
  Sem r ()
crit =
  withFrozenCallStack (log Crit)
{-# inline crit #-}
