-- |Description: Internal
module Polysemy.Log.Stdout where

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
interpretDataLogStdoutWith ::
  Member (Embed IO) r =>
  (a -> Text) ->
  InterpreterFor (DataLog a) r
interpretDataLogStdoutWith fmt =
  interpretDataLog \ msg -> embed (Text.hPutStrLn stderr (fmt msg))
{-# INLINE interpretDataLogStdoutWith #-}

-- |Interpret 'DataLog' by printing to stderr, converting messages to 'Text' by using 'Show'.
interpretDataLogStdout ::
  Show a =>
  Member (Embed IO) r =>
  InterpreterFor (DataLog a) r
interpretDataLogStdout =
  interpretDataLogStdoutWith show
{-# INLINE interpretDataLogStdout #-}

-- |Interpret 'Log' by printing to stderr, converting messages to 'Text' with the supplied function.
interpretLogStdoutWith ::
  Members [Embed IO, GhcTime] r =>
  (LogEntry LogMessage -> Text) ->
  InterpreterFor Log r
interpretLogStdoutWith fmt =
  interpretDataLogStdoutWith fmt .
  interpretTimeGhc .
  interpretLogDataLog .
  raiseUnder2
{-# INLINE interpretLogStdoutWith #-}

-- |Interpret 'Log' by printing to stderr, using the default formatter.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogStdout'' for a variant that interprets 'GhcTime' in-place.
interpretLogStdout ::
  Members [Embed IO, GhcTime] r =>
  InterpreterFor Log r
interpretLogStdout =
  interpretLogStdoutWith formatLogEntry
{-# INLINE interpretLogStdout #-}

-- |Interpret 'Log' by printing to stderr, using the default formatter, then interpreting 'GhcTime'.
interpretLogStdout' ::
  Member (Embed IO) r =>
  InterpreterFor Log r
interpretLogStdout' =
  interpretTimeGhc .
  interpretLogStdout .
  raiseUnder
{-# INLINE interpretLogStdout' #-}

-- |Like 'interpretLogStdout', but process messages concurrently.
interpretLogStdoutConc ::
  Members [Resource, Async, Race, Embed IO] r =>
  InterpreterFor Log r
interpretLogStdoutConc =
  interpretTimeGhc .
  interpretDataLogStdoutWith formatLogEntry .
  interpretLogDataLogConc 64 .
  raiseUnder2
{-# INLINE interpretLogStdoutConc #-}
