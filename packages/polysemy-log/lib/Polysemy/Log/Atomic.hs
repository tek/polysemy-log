-- |Description: Internal
module Polysemy.Log.Atomic where

import Polysemy (interpretH, runT)
import Polysemy.Internal (InterpretersFor)
import Polysemy.Internal.Tactics (liftT)

import Polysemy.Log.Data.DataLog (DataLog(DataLog, Local))
import Polysemy.Log.Data.Log (Log(Log))
import Polysemy.Log.Data.LogMessage (LogMessage)

-- |Interpret 'DataLog' by prepending each message to a list in an 'AtomicState'.
-- Maintains a context function as state that is applied to each logged message, allowing the context of a block to be
-- modified.
interpretDataLogAtomicLocal ::
  ∀ a r .
  Member (AtomicState [a]) r =>
  (a -> a) ->
  InterpreterFor (DataLog a) r
interpretDataLogAtomicLocal context =
  interpretH \case
    DataLog msg ->
      liftT (atomicModify' (context msg :))
    Local f ma ->
      raise . interpretDataLogAtomicLocal (f . context) =<< runT ma
{-# INLINE interpretDataLogAtomicLocal #-}

-- |Interpret 'DataLog' by prepending each message to a list in an 'AtomicState'.
interpretDataLogAtomic' ::
  ∀ a r .
  Member (AtomicState [a]) r =>
  InterpreterFor (DataLog a) r
interpretDataLogAtomic' =
  interpretDataLogAtomicLocal id
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
