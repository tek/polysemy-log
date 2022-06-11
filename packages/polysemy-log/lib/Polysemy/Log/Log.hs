-- |Description: Internal
module Polysemy.Log.Log where

import Polysemy.Conc (Race)
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Conc (interceptDataLogConc)
import Polysemy.Log.Effect.DataLog (DataLog (DataLog, Local), dataLog)
import Polysemy.Log.Effect.Log (Log (Log))
import Polysemy.Log.Data.LogEntry (LogEntry, annotate)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Effect.LogMetadata (LogMetadata (Annotated), annotated)

-- |Interpret 'Log' into the intermediate internal effect 'LogMetadata'.
interpretLogLogMetadata ::
  Members [LogMetadata LogMessage, GhcTime] r =>
  InterpreterFor Log r
interpretLogLogMetadata =
  interpret \case
    Log msg -> annotated msg
{-# inline interpretLogLogMetadata #-}

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
{-# inline interpretLogMetadataDataLog #-}

-- |Interpret the intermediate internal effect 'LogMetadata' into 'DataLog'.
interpretLogMetadataDataLog' ::
  Members [DataLog (LogEntry a), Embed IO] r =>
  InterpretersFor [LogMetadata a, GhcTime] r
interpretLogMetadataDataLog' =
  interpretTimeGhc . interpretLogMetadataDataLog
{-# inline interpretLogMetadataDataLog' #-}

-- |Interpret 'Log' into 'DataLog', adding metadata information and wrapping with 'LogEntry'.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogDataLog'' for a variant that interprets 'GhcTime' in-place.
interpretLogDataLog ::
  Members [DataLog (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogDataLog =
  interpretLogMetadataDataLog @LogMessage . interpretLogLogMetadata . raiseUnder
{-# inline interpretLogDataLog #-}

-- |Interpret 'Log' into 'DataLog', adding metadata information and wrapping with 'LogEntry'.
interpretLogDataLog' ::
  Members [DataLog (LogEntry LogMessage), Embed IO] r =>
  InterpretersFor [Log, LogMetadata LogMessage, GhcTime] r
interpretLogDataLog' =
  interpretLogMetadataDataLog' . interpretLogLogMetadata
{-# inline interpretLogDataLog' #-}

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
{-# inline interpretLogDataLogConc #-}

-- |Helper for maintaining a context function as state that is applied to each logged message, allowing the context of a
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
{-# inline interpretDataLogLocal #-}

-- |Combinator for building 'DataLog' interpreters that handles 'Local'.
interpretDataLog ::
  ∀ a r .
  (a -> Sem r ()) ->
  InterpreterFor (DataLog a) r
interpretDataLog =
  interpretDataLogLocal id
