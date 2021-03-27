module Polysemy.Log.Log where

import Polysemy.Internal (InterpretersFor)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Data.DataLog (DataLog, dataLog)
import Polysemy.Log.Data.Log (Log(Log))
import Polysemy.Log.Data.LogEntry (LogEntry, annotate)
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Data.LogMetadata (LogMetadata(Annotated), annotated)

interpretLogLogMetadata ::
  Members [LogMetadata LogMessage, GhcTime] r =>
  InterpreterFor Log r
interpretLogLogMetadata =
  interpret \case
    Log msg -> annotated msg
{-# INLINE interpretLogLogMetadata #-}

interpretLogMetadataDataLog ::
  ∀ a r .
  Members [DataLog (LogEntry a), GhcTime] r =>
  InterpreterFor (LogMetadata a) r
interpretLogMetadataDataLog =
  interpret \case
    Annotated msg -> dataLog =<< annotate msg
{-# INLINE interpretLogMetadataDataLog #-}

interpretLogMetadataDataLog' ::
  Members [DataLog (LogEntry a), Embed IO] r =>
  InterpretersFor [LogMetadata a, GhcTime] r
interpretLogMetadataDataLog' =
  interpretTimeGhc . interpretLogMetadataDataLog
{-# INLINE interpretLogMetadataDataLog' #-}

interpretLogDataLog ::
  Members [DataLog (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogDataLog =
  interpretLogMetadataDataLog @LogMessage . interpretLogLogMetadata . raiseUnder
{-# INLINE interpretLogDataLog #-}

interpretLogDataLog' ::
  Member (Embed IO) r =>
  Member (DataLog (LogEntry LogMessage)) r =>
  InterpretersFor [Log, LogMetadata LogMessage, GhcTime] r
interpretLogDataLog' =
  interpretLogMetadataDataLog' . interpretLogLogMetadata
{-# INLINE interpretLogDataLog' #-}
