-- |Description: Internal
module Polysemy.Log.Log where

import Polysemy.Async (Async)
import Polysemy.Internal (InterpretersFor)
import Polysemy.Resource (Resource)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Conc (interceptDataLogConc)
import Polysemy.Log.Data.DataLog (DataLog, dataLog)
import Polysemy.Log.Data.Log (Log(Log))
import Polysemy.Log.Data.LogEntry (LogEntry, annotate)
import Polysemy.Log.Data.LogMessage (LogMessage (LogMessage))
import Polysemy.Log.Data.LogMetadata (LogMetadata(Annotated), annotated)

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
  Members [DataLog (LogEntry LogMessage), Resource, Async, Embed IO] r =>
  Int ->
  InterpreterFor Log r
interpretLogDataLogConc maxQueued =
  interceptDataLogConc @(LogEntry LogMessage) maxQueued .
  interpretTimeGhc .
  interpretLogMetadataDataLog @LogMessage .
  interpretLogLogMetadata .
  raiseUnder2
{-# INLINE interpretLogDataLogConc #-}
