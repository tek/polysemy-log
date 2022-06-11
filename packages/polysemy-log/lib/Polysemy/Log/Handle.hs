-- |Description: Handle Interpreters, Internal
module Polysemy.Log.Handle where

import qualified Data.Text.IO as Text
import System.IO (BufferMode (LineBuffering), Handle, hSetBuffering)

import Polysemy.Log.Effect.DataLog (DataLog)
import Polysemy.Log.Log (interpretDataLog)

-- |Interpret 'DataLog' by printing to the given handle, converting messages to 'Text' with the supplied function.
-- Sets the handle into 'LineBuffering' mode.
interpretDataLogHandleWith ::
  Member (Embed IO) r =>
  Handle ->
  (a -> Text) ->
  InterpreterFor (DataLog a) r
interpretDataLogHandleWith handle fmt sem = do
  embed @IO (hSetBuffering handle LineBuffering)
  interpretDataLog (embed . Text.hPutStrLn handle . fmt) sem
{-# inline interpretDataLogHandleWith #-}
