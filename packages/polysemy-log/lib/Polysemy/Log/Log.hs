-- |Description: Internal
module Polysemy.Log.Log where

import qualified Data.Text.IO as Text
import Polysemy (interpretH, runT)
import Polysemy.Async (Async)
import Polysemy.Conc (Race)
import Polysemy.Internal (InterpretersFor)
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Resource (Resource)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Conc (interceptDataLogConc)
import Polysemy.Log.Data.DataLog (DataLog(DataLog, Local), dataLog)
import Polysemy.Log.Data.Log (Log(Log))
import Polysemy.Log.Data.LogEntry (LogEntry, annotate)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Data.LogMetadata (LogMetadata(Annotated), annotated)
import Polysemy.Log.Format (formatLogEntry)

-- |Interpret 'Log' into the intermediate internal effect 'LogMetadata'.
interpretLogLogMetadata ::
  Members [LogMetadata LogMessage, GhcTime] r =>
  InterpreterFor Log r
interpretLogLogMetadata =
  interpret \case
    Log msg -> annotated msg
{-# INLINE interpretLogLogMetadata #-}

-- |Interpret the intermediate internal effect 'LogMetadata' into 'DataLog'.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogMetadataDataLog'' for a variant that interprets 'GhcTime' in-place.
interpretLogMetadataDataLog ::
  ∀ a r .
  Members [DataLog (LogEntry a), GhcTime] r =>
  InterpreterFor (LogMetadata a) r
interpretLogMetadataDataLog =
  interpret \case
    Annotated msg -> dataLog =<< annotate msg
{-# INLINE interpretLogMetadataDataLog #-}

-- |Interpret the intermediate internal effect 'LogMetadata' into 'DataLog'.
interpretLogMetadataDataLog' ::
  Members [DataLog (LogEntry a), Embed IO] r =>
  InterpretersFor [LogMetadata a, GhcTime] r
interpretLogMetadataDataLog' =
  interpretTimeGhc . interpretLogMetadataDataLog
{-# INLINE interpretLogMetadataDataLog' #-}

-- |Interpret 'Log' into 'DataLog', adding metadata information and wrapping with 'LogEntry'.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogDataLog'' for a variant that interprets 'GhcTime' in-place.
interpretLogDataLog ::
  Members [DataLog (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogDataLog =
  interpretLogMetadataDataLog @LogMessage . interpretLogLogMetadata . raiseUnder
{-# INLINE interpretLogDataLog #-}

-- |Interpret 'Log' into 'DataLog', adding metadata information and wrapping with 'LogEntry'.
interpretLogDataLog' ::
  Members [DataLog (LogEntry LogMessage), Embed IO] r =>
  InterpretersFor [Log, LogMetadata LogMessage, GhcTime] r
interpretLogDataLog' =
  interpretLogMetadataDataLog' . interpretLogLogMetadata
{-# INLINE interpretLogDataLog' #-}

-- |Interpret 'Log' into 'DataLog' concurrently, adding metadata information and wrapping with 'LogEntry'.
interpretLogDataLogConc ::
  Members [DataLog (LogEntry LogMessage), Resource, Async, Race, Embed IO] r =>
  Int ->
  InterpreterFor Log r
interpretLogDataLogConc maxQueued =
  interceptDataLogConc @(LogEntry LogMessage) maxQueued .
  interpretTimeGhc .
  interpretLogMetadataDataLog @LogMessage .
  interpretLogLogMetadata .
  raiseUnder2
{-# INLINE interpretLogDataLogConc #-}

-- |Helper for maintaining context function as state that is applied to each logged message, allowing the context of a
-- block to be modified.
interpretDataLogLocal ::
  ∀ a r .
  (a -> a) ->
  (a -> Sem r ()) ->
  InterpreterFor (DataLog a) r
interpretDataLogLocal context log =
  interpretH \case
    DataLog msg ->
      liftT (log (context msg))
    Local f ma ->
      raise . interpretDataLogLocal (f . context) log =<< runT ma
{-# INLINE interpretDataLogLocal #-}

-- |Combinator for building 'DataLog' interpreters that handles 'Local'.
interpretDataLog ::
  ∀ a r .
  (a -> Sem r ()) ->
  InterpreterFor (DataLog a) r
interpretDataLog =
  interpretDataLogLocal id

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
