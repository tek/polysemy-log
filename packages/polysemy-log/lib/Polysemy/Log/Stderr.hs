-- |Description: Stderr Interpreters, Internal
module Polysemy.Log.Stderr where

import Polysemy.Conc (Race)
import Polysemy.Time (GhcTime, interpretTimeGhc)
import System.IO (stderr)

import Polysemy.Log.Effect.DataLog (DataLog)
import Polysemy.Log.Effect.Log (Log)
import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Data.Severity (Severity)
import Polysemy.Log.Format (formatLogEntry)
import Polysemy.Log.Handle (interpretDataLogHandleWith)
import Polysemy.Log.Level (setLogLevel)
import Polysemy.Log.Log (interpretLogDataLog, interpretLogDataLogConc)

-- |Interpret 'DataLog' by printing to stderr, converting messages to 'Text' with the supplied function.
interpretDataLogStderrWith ::
  Member (Embed IO) r =>
  (a -> Text) ->
  InterpreterFor (DataLog a) r
interpretDataLogStderrWith =
  interpretDataLogHandleWith stderr
{-# inline interpretDataLogStderrWith #-}

-- |Interpret 'DataLog' by printing to stderr, converting messages to 'Text' by using 'Show'.
interpretDataLogStderr ::
  Show a =>
  Member (Embed IO) r =>
  InterpreterFor (DataLog a) r
interpretDataLogStderr =
  interpretDataLogStderrWith show
{-# inline interpretDataLogStderr #-}

-- |Interpret 'Log' by printing to stderr, converting messages to 'Text' with the supplied function.
interpretLogStderrWith ::
  Members [Embed IO, GhcTime] r =>
  (LogEntry LogMessage -> Text) ->
  InterpreterFor Log r
interpretLogStderrWith fmt =
  interpretDataLogStderrWith fmt .
  interpretTimeGhc .
  interpretLogDataLog .
  raiseUnder2
{-# inline interpretLogStderrWith #-}

-- |Like 'interpretLogStderrWith', but setting a log level.
-- 'Nothing' causes no messages to be logged.
interpretLogStderrLevelWith ::
  Members [Embed IO, GhcTime] r =>
  (LogEntry LogMessage -> Text) ->
  Maybe Severity ->
  InterpreterFor Log r
interpretLogStderrLevelWith fmt level =
  interpretDataLogStderrWith fmt .
  setLogLevel level .
  interpretTimeGhc .
  interpretLogDataLog .
  raiseUnder2
{-# inline interpretLogStderrLevelWith #-}

-- |Interpret 'Log' by printing to stderr, using the default formatter.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogStderr'' for a variant that interprets 'GhcTime' in-place.
interpretLogStderr ::
  Members [Embed IO, GhcTime] r =>
  InterpreterFor Log r
interpretLogStderr =
  interpretLogStderrWith formatLogEntry
{-# inline interpretLogStderr #-}

-- |Like 'interpretLogStderr', but setting a log level.
-- 'Nothing' causes no messages to be logged.
interpretLogStderrLevel ::
  Members [Embed IO, GhcTime] r =>
  Maybe Severity ->
  InterpreterFor Log r
interpretLogStderrLevel =
  interpretLogStderrLevelWith formatLogEntry
{-# inline interpretLogStderrLevel #-}

-- |Interpret 'Log' by printing to stderr, using the default formatter, then interpreting 'GhcTime'.
interpretLogStderr' ::
  Member (Embed IO) r =>
  InterpreterFor Log r
interpretLogStderr' =
  interpretTimeGhc .
  interpretLogStderr .
  raiseUnder
{-# inline interpretLogStderr' #-}

-- |Like 'interpretLogStderr', but process messages concurrently.
interpretLogStderrConc ::
  Members [Resource, Async, Race, Embed IO] r =>
  InterpreterFor Log r
interpretLogStderrConc =
  interpretTimeGhc .
  interpretDataLogStderrWith formatLogEntry .
  interpretLogDataLogConc 64 .
  raiseUnder2
{-# inline interpretLogStderrConc #-}

-- |Like 'interpretLogStderr', but process messages concurrently.
interpretLogStderrLevelConc ::
  Members [Resource, Async, Race, Embed IO] r =>
  Maybe Severity ->
  InterpreterFor Log r
interpretLogStderrLevelConc level =
  interpretTimeGhc .
  interpretDataLogStderrWith formatLogEntry .
  setLogLevel level .
  interpretLogDataLogConc 64 .
  raiseUnder2
{-# inline interpretLogStderrLevelConc #-}
