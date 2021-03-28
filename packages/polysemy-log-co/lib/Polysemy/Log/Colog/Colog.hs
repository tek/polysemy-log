-- |Description: Interpreters
module Polysemy.Log.Colog.Colog where

import qualified Colog (Message, Msg(Msg), Severity(..), logTextStdout, richMessageAction)
import qualified Colog.Polysemy as Colog
import Colog.Polysemy (runLogAction)
import Polysemy (interpretH, runT)
import Polysemy.Internal (InterpretersFor)
import Polysemy.Internal.Tactics (liftT)
import Polysemy.Time (GhcTime, interpretTimeGhc)

import Polysemy.Log.Data.DataLog (DataLog(DataLog, Local))
import Polysemy.Log.Data.Log (Log)
import Polysemy.Log.Data.LogEntry (LogEntry (LogEntry))
import Polysemy.Log.Data.LogMessage (LogMessage(..))
import qualified Polysemy.Log.Data.Severity as Severity
import Polysemy.Log.Data.Severity (Severity)
import Polysemy.Log.Format (formatLogEntry)
import Polysemy.Log.Log (interpretLogDataLog)

-- |Convert 'Severity' into the /co-log/ variant, 'Colog.Severity'.
-- 'Severity.Trace' is conflated with 'Colog.Debug', and 'Severity.Crit' into 'Colog.Error'.
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

-- |Convert a default log message into the /co-log/-native 'Colog.Message'.
toColog :: LogEntry LogMessage -> Colog.Message
toColog (LogEntry LogMessage {..} _ source) =
  Colog.Msg (severityToColog severity) source message
{-# INLINE toColog #-}

-- |Reinterpret 'DataLog' as 'Colog.Log'.
-- Maintains a context function as state that is applied to each logged message, allowing the context of a block to be
-- modified.
interpretDataLogCologLocal ::
  ∀ a b r .
  Member (Colog.Log b) r =>
  (a -> b) ->
  (a -> a) ->
  InterpreterFor (DataLog a) r
interpretDataLogCologLocal convert context =
  interpretH \case
    DataLog msg ->
      liftT (Colog.log (convert (context msg)))
    Local f ma ->
      raise . interpretDataLogCologLocal convert (f . context) =<< runT ma
{-# INLINE interpretDataLogCologLocal #-}

-- |Reinterpret 'DataLog' as 'Colog.Log'.
interpretDataLogColog ::
  ∀ a r .
  Member (Colog.Log a) r =>
  InterpreterFor (DataLog a) r
interpretDataLogColog =
  interpretDataLogCologLocal id id
{-# INLINE interpretDataLogColog #-}

-- |Reinterpret 'DataLog', specialized to the default message, as 'Colog.Log'.
interpretDataLogNative ::
  Member (Colog.Log Colog.Message) r =>
  InterpreterFor (DataLog (LogEntry LogMessage)) r
interpretDataLogNative =
  interpretDataLogCologLocal toColog id
{-# INLINE interpretDataLogNative #-}

-- |Reinterpret 'Log' as 'Colog.Log', using the /polysemy-log/ default message.
--
-- Since this adds a timestamp, it has a dependency on 'GhcTime'.
-- Use 'interpretLogColog'' for a variant that interprets 'GhcTime' in-place.
interpretLogColog ::
  Members [Colog.Log (LogEntry LogMessage), GhcTime] r =>
  InterpreterFor Log r
interpretLogColog =
  interpretDataLogColog @(LogEntry LogMessage) .
  interpretLogDataLog .
  raiseUnder
{-# INLINE interpretLogColog #-}

-- |Reinterpret 'Log' as 'Colog.Log', also interpreting 'GhcTime'.
interpretLogColog' ::
  Members [Colog.Log (LogEntry LogMessage), Embed IO] r =>
  InterpretersFor [Log, GhcTime] r
interpretLogColog' =
  interpretTimeGhc . interpretLogColog
{-# INLINE interpretLogColog' #-}

-- |Interpret 'Colog.Log' by printing to stdout, using the provided message formatter.
interpretCologStdoutFormat ::
  ∀ msg m r .
  MonadIO m =>
  Member (Embed m) r =>
  (msg -> Text) ->
  InterpreterFor (Colog.Log msg) r
interpretCologStdoutFormat format =
  runLogAction @m (contramap format Colog.logTextStdout)
{-# INLINE interpretCologStdoutFormat #-}

-- |Interpret 'Colog.Log' with the default message by printing to stdout, using the default message formatter.
interpretCologStdout ::
  ∀ m r .
  MonadIO m =>
  Member (Embed m) r =>
  InterpreterFor (Colog.Log (LogEntry LogMessage)) r
interpretCologStdout =
  interpretCologStdoutFormat @_ @m formatLogEntry
{-# INLINE interpretCologStdout #-}

-- |Interpret 'Log' fully in terms of 'Colog.Log', using the default message and stdout.
interpretLogStdout ::
  Member (Embed IO) r =>
  InterpreterFor Log r
interpretLogStdout =
  interpretCologStdout @IO .
  interpretTimeGhc .
  interpretDataLogColog @(LogEntry LogMessage) .
  interpretLogDataLog .
  raiseUnder3
{-# INLINE interpretLogStdout #-}

-- |Interpret 'Colog.Log' with the /co-log/ message protocol by printing to stdout, using /co-log/'s rich message
-- formatter.
interpretCologStdoutNative ::
  ∀ m r .
  MonadIO m =>
  Member (Embed m) r =>
  InterpreterFor (Colog.Log Colog.Message) r
interpretCologStdoutNative =
  runLogAction @m Colog.richMessageAction
{-# INLINE interpretCologStdoutNative #-}

-- |Reinterpret 'Log' as 'Colog.Log', using the /co-log/ message protocol.
interpretLogCologAsNative ::
  Members [Colog.Log Colog.Message, GhcTime] r =>
  InterpreterFor Log r
interpretLogCologAsNative =
  interpretDataLogNative .
  interpretLogDataLog .
  raiseUnder
{-# INLINE interpretLogCologAsNative #-}

-- |Interpret 'Log' fully in terms of 'Colog.Log', using /co-log/'s message protocol and stdout.
interpretLogStdoutAsNative ::
  Member (Embed IO) r =>
  InterpretersFor [Log, Colog.Log Colog.Message] r
interpretLogStdoutAsNative =
  interpretCologStdoutNative @IO .
  interpretTimeGhc .
  interpretLogCologAsNative .
  raiseUnder
{-# INLINE interpretLogStdoutAsNative #-}
