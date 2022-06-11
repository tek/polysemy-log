-- |Description: Pure interpreters for 'Log'.
module Polysemy.Log.Pure where

import Polysemy.Log.Effect.Log (Log (Log))
import Polysemy.Log.Data.LogMessage (LogMessage)

-- |Interpret 'Log' in terms of 'Output'.
interpretLogOutput ::
  Member (Output LogMessage) r =>
  InterpreterFor Log r
interpretLogOutput =
  interpret \case
    Log msg -> output msg

-- |Interpret 'Log' by discarding all messages.
interpretLogNull :: InterpreterFor Log r
interpretLogNull =
  interpret \case
    Log _ -> pure ()
