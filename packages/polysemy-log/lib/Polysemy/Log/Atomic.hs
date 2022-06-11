-- |Description: Interpreters for 'DataLog' that write to 'AtomicState'.
module Polysemy.Log.Atomic where

import Control.Concurrent.STM (newTVarIO)

import Polysemy.Log.Effect.DataLog (DataLog)
import Polysemy.Log.Effect.Log (Log (Log))
import Polysemy.Log.Data.LogMessage (LogMessage)
import Polysemy.Log.Log (interpretDataLog)

-- |Interpret 'DataLog' by prepending each message to a list in an 'AtomicState'.
interpretDataLogAtomic' ::
  ∀ a r .
  Member (AtomicState [a]) r =>
  InterpreterFor (DataLog a) r
interpretDataLogAtomic' =
  interpretDataLog \ msg -> atomicModify' @[a] (msg :)
{-# inline interpretDataLogAtomic' #-}

-- |Interpret 'DataLog' by prepending each message to a list in an 'AtomicState', then interpret the 'AtomicState' in a
-- 'Control.Concurrent.STM.TVar'.
interpretDataLogAtomic ::
  ∀ a r .
  Member (Embed IO) r =>
  InterpretersFor [DataLog a, AtomicState [a]] r
interpretDataLogAtomic sem = do
  tv <- embed (newTVarIO [])
  runAtomicStateTVar tv (interpretDataLogAtomic' sem)
{-# inline interpretDataLogAtomic #-}

-- |Interpret 'Log' by prepending each message to a list in an 'AtomicState'.
interpretLogAtomic' ::
  Member (AtomicState [LogMessage]) r =>
  InterpreterFor Log r
interpretLogAtomic' =
  interpret \case
    Log msg -> atomicModify' (msg :)
{-# inline interpretLogAtomic' #-}

-- |Interpret 'Log' by prepending each message to a list in an 'AtomicState', then interpret the 'AtomicState' in a
-- 'Control.Concurrent.STM.TVar'.
interpretLogAtomic ::
  Member (Embed IO) r =>
  InterpretersFor [Log, AtomicState [LogMessage]] r
interpretLogAtomic sem = do
  tv <- embed (newTVarIO [])
  runAtomicStateTVar tv (interpretLogAtomic' sem)
{-# inline interpretLogAtomic #-}
