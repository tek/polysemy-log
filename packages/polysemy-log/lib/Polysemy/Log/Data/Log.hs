-- |Description: Internal
module Polysemy.Log.Data.Log where

import Polysemy.Internal (send)

import Polysemy.Log.Data.Severity (Severity, Severity(Debug, Trace, Info, Warn, Error, Crit))
import Polysemy.Log.Data.LogMessage (LogMessage(LogMessage))

-- |The default high-level effect for simple text messages.
-- To be used with the severity constructors:
--
-- @
-- import qualified Polysemy.Log as Log
--
-- prog = do
--   Log.debug "debugging…"
--   Log.warn "warning!"
-- @
--
-- Interpreters should preprocess and relay the message to 'Polysemy.Log.DataLog'.
data Log :: Effect where
  -- |Schedule a message to be logged.
  Log :: HasCallStack => LogMessage -> Log m ()

-- |Log a message with the given severity.
-- Basic 'Sem' constructor.
log ::
  HasCallStack =>
  Member Log r =>
  Severity ->
  Text ->
  Sem r ()
log severity message =
  withFrozenCallStack $
  send (Log (LogMessage severity message))
{-# inline log #-}

-- |Log a message with the 'Trace' severity.
trace ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
trace =
  withFrozenCallStack $
  log Trace
{-# inline trace #-}

-- |Log a message with the 'Debug' severity.
debug ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
debug =
  withFrozenCallStack $
  log Debug
{-# inline debug #-}

-- |Log a message with the 'Info' severity.
info ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
info =
  withFrozenCallStack $
  log Info
{-# inline info #-}

-- |Log a message with the 'Warn' severity.
warn ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
warn =
  withFrozenCallStack $
  log Warn
{-# inline warn #-}

-- |Log a message with the 'Error' severity.
error ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
error =
  withFrozenCallStack $
  log Error
{-# inline error #-}

-- |Log a message with the 'Crit' severity.
crit ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
crit =
  withFrozenCallStack $
  log Crit
{-# inline crit #-}
