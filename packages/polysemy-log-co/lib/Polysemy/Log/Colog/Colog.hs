module Polysemy.Log.Colog.Colog where

import qualified Colog (Message, Msg(Msg), Severity(..), logTextStdout, richMessageAction)
import qualified Colog.Polysemy as Colog
import Colog.Polysemy (runLogAction)
import Polysemy.Internal (InterpretersFor)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Data.DataLog (DataLog(DataLog))
import Polysemy.Log.Data.Log (Log)
import Polysemy.Log.Data.LogEntry (LogEntry (LogEntry))
import Polysemy.Log.Data.LogMessage (LogMessage(..))
import qualified Polysemy.Log.Data.Severity as Severity
import Polysemy.Log.Data.Severity (Severity)
import Polysemy.Log.Format (formatLogEntry)
import Polysemy.Log.Log (interpretLogDataLog)

severityToColog ::
  Severity ->
  Colog.Severity
severityToColog = \case
  Severity.Trace -> Colog.Debug
  Severity.Debug -> Colog.Debug
  Severity.Info -> Colog.Info
  Severity.Warn -> Colog.Warning
  Severity.Error -> Colog.Error
  Severity.Crit -> Colog.Error
{-# INLINE severityToColog #-}

toColog :: LogEntry LogMessage -> Colog.Message
toColog (LogEntry LogMessage {..} _ source) =
  Colog.Msg (severityToColog severity) source message
{-# INLINE toColog #-}

interpretDataLogColog ::
  ∀ a r .
  Member (Colog.Log a) r =>
  InterpreterFor (DataLog a) r
interpretDataLogColog =
  interpret \case
    DataLog msg -> Colog.log msg
{-# INLINE interpretDataLogColog #-}

interpretDataLogNative ::
  Member (Colog.Log Colog.Message) r =>
  InterpreterFor (DataLog (LogEntry LogMessage)) r
interpretDataLogNative =
  interpret \case
    DataLog msg -> Colog.log (toColog msg)
{-# INLINE interpretDataLogNative #-}

interpretLogColog ::
  Members [Colog.Log (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogColog =
  interpretDataLogColog @(LogEntry LogMessage) .
  interpretLogDataLog .
  raiseUnder
{-# INLINE interpretLogColog #-}

interpretLogColog' ::
  Members [Colog.Log (LogEntry LogMessage), Embed IO] r =>
  InterpretersFor [Log, GhcTime] r
interpretLogColog' =
  interpretTimeGhc . interpretLogColog
{-# INLINE interpretLogColog' #-}

interpretLogSimpleCologNative ::
  Members [Colog.Log Colog.Message, GhcTime] r =>
  InterpreterFor Log r
interpretLogSimpleCologNative =
  interpretDataLogNative .
  interpretLogDataLog .
  raiseUnder
{-# INLINE interpretLogSimpleCologNative #-}

runLogActionStdoutNative ::
  ∀ m r .
  MonadIO m =>
  Member (Embed m) r =>
  InterpreterFor (Colog.Log Colog.Message) r
runLogActionStdoutNative =
  runLogAction @m Colog.richMessageAction
{-# INLINE runLogActionStdoutNative #-}

runLogActionStdoutFormat ::
  ∀ msg m r .
  MonadIO m =>
  Member (Embed m) r =>
  (msg -> Text) ->
  InterpreterFor (Colog.Log msg) r
runLogActionStdoutFormat format =
  runLogAction @m (contramap format Colog.logTextStdout)
{-# INLINE runLogActionStdoutFormat #-}

runLogActionStdout ::
  ∀ m r .
  MonadIO m =>
  Member (Embed m) r =>
  InterpreterFor (Colog.Log (LogEntry LogMessage)) r
runLogActionStdout =
  runLogActionStdoutFormat @_ @m formatLogEntry
{-# INLINE runLogActionStdout #-}

interpretLogStdout ::
  Member (Embed IO) r =>
  InterpreterFor Log r
interpretLogStdout =
  runLogActionStdout @IO .
  interpretTimeGhc .
  interpretDataLogColog @(LogEntry LogMessage) .
  interpretLogDataLog .
  raiseUnder3
{-# INLINE interpretLogStdout #-}

interpretLogStdoutAsNative ::
  Member (Embed IO) r =>
  InterpretersFor [Log, Colog.Log Colog.Message] r
interpretLogStdoutAsNative =
  runLogActionStdoutNative @IO .
  interpretTimeGhc .
  interpretLogSimpleCologNative .
  raiseUnder
{-# INLINE interpretLogStdoutAsNative #-}
