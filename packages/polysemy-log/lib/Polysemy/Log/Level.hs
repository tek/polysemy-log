-- |Description: Internal
module Polysemy.Log.Level where

import qualified Polysemy.Log.Effect.DataLog as DataLog
import Polysemy.Log.Effect.DataLog (DataLog (DataLog, Local))
import qualified Polysemy.Log.Data.LogEntry as LogEntry
import Polysemy.Log.Data.LogEntry (LogEntry)
import qualified Polysemy.Log.Data.LogMessage as LogMessage
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Data.Severity (Severity)

-- |Set the minimum severity for messages to be handled, with 'Nothing' meaning no messages are logged.
-- This can be used with arbitrary message types, using the @ex@ argument to extract the severity from the message.
setLogLevelWith ::
  ∀ msg r a .
  Member (DataLog msg) r =>
  (msg -> Severity) ->
  Maybe Severity ->
  Sem r a ->
  Sem r a
setLogLevelWith ex level =
  interceptH @(DataLog msg) \case
    DataLog msg -> do
      when (maybe False (ex msg >=) level) do
        DataLog.dataLog msg
      pureT ()
    Local f mb ->
      DataLog.local f (runTSimple mb)
{-# inline setLogLevelWith #-}

-- |Set the minimum severity for messages to be handled, with 'Nothing' meaning no messages are logged.
setLogLevel ::
  Member (DataLog (LogEntry LogMessage)) r =>
  Maybe Severity ->
  Sem r a ->
  Sem r a
setLogLevel =
  setLogLevelWith @(LogEntry LogMessage) \ m -> m.message.severity
{-# inline setLogLevel #-}
