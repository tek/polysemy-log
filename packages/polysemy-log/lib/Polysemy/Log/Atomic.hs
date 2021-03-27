{-# OPTIONS_HADDOCK hide #-}
module Polysemy.Log.Atomic where

import Polysemy.Internal (InterpretersFor)

import Polysemy.Log.Data.DataLog (DataLog(DataLog))
import Polysemy.Log.Data.Log (Log(Log))
import Polysemy.Log.Data.LogMessage (LogMessage)

-- |Interpret 'DataLog' by prepending each message to a list in an 'AtomicState'.
interpretDataLogAtomic' ::
  ∀ a r .
  Member (AtomicState [a]) r =>
  InterpreterFor (DataLog a) r
interpretDataLogAtomic' =
  interpret \case
    DataLog msg -> atomicModify' (msg :)
{-# INLINE interpretDataLogAtomic' #-}

-- |Interpret 'DataLog' by prepending each message to a list in an 'AtomicState', then interpret the 'AtomicState' in a
-- 'TVar'.
interpretDataLogAtomic ::
  ∀ a r .
  Member (Embed IO) r =>
  InterpretersFor [DataLog a, AtomicState [a]] r
interpretDataLogAtomic sem = do
  tv <- newTVarIO []
  runAtomicStateTVar tv (interpretDataLogAtomic' sem)
{-# INLINE interpretDataLogAtomic #-}

-- |Interpret 'Log' by prepending each message to a list in an 'AtomicState'.
interpretLogAtomic' ::
  Member (AtomicState [LogMessage]) r =>
  InterpreterFor Log r
interpretLogAtomic' =
  interpret \case
    Log msg -> atomicModify' (msg :)
{-# INLINE interpretLogAtomic' #-}

-- |Interpret 'Log' by prepending each message to a list in an 'AtomicState', then interpret the 'AtomicState' in a
-- 'TVar'.
interpretLogAtomic ::
  Member (Embed IO) r =>
  InterpretersFor [Log, AtomicState [LogMessage]] r
interpretLogAtomic sem = do
  tv <- newTVarIO []
  runAtomicStateTVar tv (interpretLogAtomic' sem)
{-# INLINE interpretLogAtomic #-}
