-- |Description: Internal
module Polysemy.Log.Stderr where

import qualified Data.Text.IO as Text
import Polysemy.Async (Async)
import Polysemy.Conc (Race)
import Polysemy.Resource (Resource)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Data.DataLog (DataLog, dataLog)
import Polysemy.Log.Data.Log (Log (Log))
import Polysemy.Log.Data.LogEntry (LogEntry)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Format (formatLogEntry)
import Polysemy.Log.Log (interpretDataLog, interpretLogDataLog, interpretLogDataLogConc)

-- |Interpret 'DataLog' by printing to stderr, converting messages to 'Text' with the supplied function.
interpretDataLogStderrWith ::
  Member (Embed IO) r =>
  (a -> Text) ->
  InterpreterFor (DataLog a) r
interpretDataLogStderrWith fmt =
  interpretDataLog \ msg -> embed (Text.hPutStrLn stderr (fmt msg))
{-# INLINE interpretDataLogStderrWith #-}

-- |Interpret 'DataLog' by printing to stderr, converting messages to 'Text' by using 'Show'.
interpretDataLogStderr ::
  Show a =>
  Member (Embed IO) r =>
  InterpreterFor (DataLog a) r
interpretDataLogStderr =
  interpretDataLogStderrWith show
{-# INLINE interpretDataLogStderr #-}

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
{-# INLINE interpretLogStderrWith #-}

-- |Interpret 'Log' by printing to stderr, using the default formatter.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogStderr'' for a variant that interprets 'GhcTime' in-place.
interpretLogStderr ::
  Members [Embed IO, GhcTime] r =>
  InterpreterFor Log r
interpretLogStderr =
  interpretLogStderrWith formatLogEntry
{-# INLINE interpretLogStderr #-}

-- |Interpret 'Log' by printing to stderr, using the default formatter, then interpreting 'GhcTime'.
interpretLogStderr' ::
  Member (Embed IO) r =>
  InterpreterFor Log r
interpretLogStderr' =
  interpretTimeGhc .
  interpretLogStderr .
  raiseUnder
{-# INLINE interpretLogStderr' #-}

-- |Like 'interpretLogStderr', but process messages concurrently.
interpretLogStderrConc ::
  Members [Resource, Async, Race, Embed IO] r =>
  InterpreterFor Log r
interpretLogStderrConc =
  interpretTimeGhc .
  interpretDataLogStderrWith formatLogEntry .
  interpretLogDataLogConc 64 .
  raiseUnder2
{-# INLINE interpretLogStderrConc #-}
