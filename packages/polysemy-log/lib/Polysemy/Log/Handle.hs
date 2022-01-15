{-# language CPP #-}

-- |Description: Handle Interpreters, Internal
module Polysemy.Log.Handle where

import qualified Data.Text.IO as Text

import Polysemy.Log.Data.DataLog (DataLog)
import Polysemy.Log.Log (interpretDataLog)

#if !MIN_VERSION_relude(1,0,0)
import System.IO (hSetBuffering, BufferMode (LineBuffering))
#endif

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
