module Polysemy.Log.Data.Log where

import Polysemy.Internal (send)

import Polysemy.Log.Data.Severity (Severity, Severity(Debug, Trace, Info, Warn, Error, Crit))
import Polysemy.Log.Data.LogMessage (LogMessage(LogMessage))

data Log :: Effect where
  Log :: HasCallStack => LogMessage -> Log m ()

log ::
  HasCallStack =>
  Member Log r =>
  Severity ->
  Text ->
  Sem r ()
log severity message =
  withFrozenCallStack $
  send (Log (LogMessage severity message))
{-# INLINE log #-}

trace ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
trace =
  withFrozenCallStack $
  log Trace
{-# INLINE trace #-}

debug ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
debug =
  withFrozenCallStack $
  log Debug
{-# INLINE debug #-}

info ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
info =
  withFrozenCallStack $
  log Info
{-# INLINE info #-}

warn ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
warn =
  withFrozenCallStack $
  log Warn
{-# INLINE warn #-}

error ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
error =
  withFrozenCallStack $
  log Error
{-# INLINE error #-}

crit ::
  HasCallStack =>
  Member Log r =>
  Text ->
  Sem r ()
crit =
  withFrozenCallStack $
  log Crit
{-# INLINE crit #-}
