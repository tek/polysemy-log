-- |Description: Internal
module Polysemy.Log.Di.Di where

import qualified DiPolysemy as Di
import Polysemy (interpretH, runT)
import Polysemy.Async (Async)
import Polysemy.Conc (Race)
import Polysemy.Internal (InterpretersFor, raise2Under)
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Resource (Resource)
import Polysemy.Time (GhcTime)

import Polysemy.Log.Data.DataLog (DataLog(DataLog, Local))
import Polysemy.Log.Data.Log (Log)
import qualified Polysemy.Log.Data.LogEntry as LogEntry
import Polysemy.Log.Data.LogEntry (LogEntry)
import qualified Polysemy.Log.Data.LogMessage as LogMessage
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Data.Severity (Severity)
import Polysemy.Log.Log (interpretLogDataLog, interpretLogDataLog', interpretLogDataLogConc)

-- |Reinterpret 'DataLog' as 'Di.Di', using the provided function to extract the log level from the message.
-- Maintains a context function as state that is applied to each logged message, allowing the context of a block to be
-- modified.
interpretDataLogDiLocal ::
  ∀ level path msg r .
  Member (Di.Di level path msg) r =>
  (msg -> level) ->
  (msg -> msg) ->
  InterpreterFor (DataLog msg) r
interpretDataLogDiLocal extractLevel context =
  interpretH \case
    DataLog msg ->
      liftT (Di.log @_ @path (extractLevel msg) (context msg))
    Local f ma ->
      raise . interpretDataLogDiLocal @_ @path extractLevel (f . context) =<< runT ma
{-# INLINE interpretDataLogDiLocal #-}

-- |Reinterpret 'DataLog' as 'Di.Di', using the provided function to extract the log level from the message.
interpretDataLogDi ::
  ∀ level path msg r .
  Member (Di.Di level path msg) r =>
  (msg -> level) ->
  InterpreterFor (DataLog msg) r
interpretDataLogDi extractLevel =
  interpretDataLogDiLocal @_ @path extractLevel id
{-# INLINE interpretDataLogDi #-}

-- |Reinterpret 'Log' as 'Di.Di', using the /polysemy-log/ default message.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogDi'' for a variant that interprets 'GhcTime' in-place.
interpretLogDi ::
  ∀ path r .
  Members [Di.Di Severity path (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogDi =
  interpretDataLogDi @_ @path (LogMessage.severity . LogEntry.message) .
  interpretLogDataLog .
  raiseUnder
{-# INLINE interpretLogDi #-}

-- |Reinterpret 'Log' as 'Di.Di', also interpreting 'GhcTime'.
interpretLogDi' ::
  ∀ path r .
  Members [Di.Di Severity path (LogEntry LogMessage), Embed IO] r =>
  InterpretersFor [Log, GhcTime] r
interpretLogDi' =
  interpretDataLogDi @_ @path (LogMessage.severity . LogEntry.message) .
  interpretLogDataLog' .
  raiseUnder .
  raise2Under
{-# INLINE interpretLogDi' #-}

-- |Reinterpret 'Log' as 'Di.Di' concurrently.
interpretLogDiConc ::
  ∀ path r .
  Members [Di.Di Severity path (LogEntry LogMessage), Resource, Async, Race, Embed IO] r =>
  Int ->
  InterpreterFor Log r
interpretLogDiConc maxQueued =
  interpretDataLogDi @_ @path (LogMessage.severity . LogEntry.message) .
  interpretLogDataLogConc maxQueued .
  raiseUnder
{-# INLINE interpretLogDiConc #-}
