-- |Description: /polysemy-log/ adapters for /di/
module Polysemy.Log.Di (
  -- * Introduction
  -- $intro

  -- * Interpreters
  interpretLogDi,
  interpretLogDi',
  interpretLogDiConc,
  interpretDataLogDi,
  interpretDiAtomic,
  interpretDiAtomic'
) where

import Polysemy.Log.Di.Atomic (interpretDiAtomic, interpretDiAtomic')
import Polysemy.Log.Di.Di (interpretDataLogDi, interpretLogDi, interpretLogDi', interpretLogDiConc)
-- $intro
-- This package is a [di](https://hackage.haskell.org/package/di-polysemy) adapter for
-- [polysemy-log](https://hackage.haskell.org/package/polysemy-log), providing interpreters that convert
-- 'Polysemy.Log.Log' and 'Polysemy.Log.DataLog' into 'DiPolysemy.Di' actions.
--
-- @
-- import Polysemy.Log
-- import Polysemy.Log.Di
--
-- prog :: Member Log r => Sem r ()
-- prog = do
--   Log.debug "debugging"
--   Log.error "failing"
--
-- interpretLogDi prog :: Sem [Di.Di Severity path (LogEntry LogMessage), Embed IO] ()
-- interpretLogStdout prog :: Sem '[Embed IO] ()
-- @
