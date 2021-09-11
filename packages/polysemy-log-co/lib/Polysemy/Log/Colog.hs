-- |Description: /polysemy-log/ adapters for /co-log/
module Polysemy.Log.Colog (
  -- * Introduction
  -- $intro

  -- * Interpreters
  interpretLogStdout,
  interpretLogStdoutConc,
  interpretLogStdoutAsNative,
  interpretLogColog,
  interpretLogColog',
  interpretDataLogColog,
  interpretCologConcNative,
  interpretCologConcNativeWith,
  interpretCologAtomic,
  interpretCologAtomic'
) where

import Polysemy.Log.Colog.Atomic (interpretCologAtomic, interpretCologAtomic')
import Polysemy.Log.Colog.Colog (
  interpretDataLogColog,
  interpretLogColog,
  interpretLogColog',
  interpretLogStdout,
  interpretLogStdoutAsNative,
  interpretLogStdoutConc,
  )
import Polysemy.Log.Colog.Conc (interpretCologConcNative, interpretCologConcNativeWith)

-- $intro
-- This package is a [co-log](https://hackage.haskell.org/package/co-log-polysemy) adapter for
-- [polysemy-log](https://hackage.haskell.org/package/polysemy-log), providing interpreters that convert
-- 'Polysemy.Log.Log' and 'Polysemy.Log.DataLog' into 'Colog.Polysemy.Log' actions.
--
-- @
-- import Polysemy.Log
-- import Polysemy.Log.Colog
--
-- prog :: Member Log r => Sem r ()
-- prog = do
--   Log.debug "debugging"
--   Log.error "failing"
--
-- interpretLogColog prog :: Sem [Colog.Log (LogEntry LogMessage), Embed IO] ()
-- interpretLogStdout prog :: Sem '[Embed IO] ()
-- @
