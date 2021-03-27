module Polysemy.Log.Di.Di where

import qualified DiPolysemy as Di
import Polysemy.Internal (InterpretersFor, raise2Under)
import Polysemy.Time (GhcTime)

import Polysemy.Log.Data.DataLog (DataLog(DataLog))
import Polysemy.Log.Data.Log (Log)
import qualified Polysemy.Log.Data.LogEntry as LogEntry
import Polysemy.Log.Data.LogEntry (LogEntry)
import qualified Polysemy.Log.Data.LogMessage as LogMessage
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Data.Severity (Severity)
import Polysemy.Log.Log (interpretLogDataLog, interpretLogDataLog')

interpretDataLogDi ::
  ∀ level path msg r .
  Member (Di.Di level path msg) r =>
  (msg -> level) ->
  InterpreterFor (DataLog msg) r
interpretDataLogDi extractLevel =
  interpret \case
    DataLog msg ->
      Di.log @_ @path (extractLevel msg) msg
{-# INLINE interpretDataLogDi #-}

interpretLogDi ::
  ∀ path r .
  Members [Di.Di Severity path (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogDi =
  interpretDataLogDi @_ @path (LogMessage.severity . LogEntry.message) .
  interpretLogDataLog .
  raiseUnder
{-# INLINE interpretLogDi #-}

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
