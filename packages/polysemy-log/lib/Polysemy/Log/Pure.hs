-- |Description: Internal
module Polysemy.Log.Pure where

import Polysemy.Output (Output, output)

import Polysemy.Log.Data.Log (Log(Log))
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
