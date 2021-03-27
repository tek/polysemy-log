{-# language NoImplicitPrelude #-}

module Polysemy.Log (
  -- * Introduction
  -- $intro
  --
  -- * Arbitrary Data Messages
  -- $datalog
  Log,
  log,
  trace,
  debug,
  info,
  warn,
  error,
  crit,
  interpretLogDataLog,
  interpretLogDataLog',
) where

import Polysemy.Log.Data.Log (Log, log, trace, debug, info, warn, error, crit)
import Polysemy.Log.Log (interpretLogDataLog, interpretLogDataLog')

-- $intro
-- There are at least two libraries that wrap a logging backend with polysemy interpreters.
-- An author of a library who wants to provide log messages faces the problem that committing to a backend requires the
-- user to translate those messages if their chosen backend differs.
--
-- /polysemy-log/ provides an abstraction for this task with interpreter adapters for /co-log/ and /di/.

-- $datalog
-- foo bar
