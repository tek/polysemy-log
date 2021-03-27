module Polysemy.Log.Colog.Atomic where

import qualified Colog.Polysemy as Colog

import Polysemy.Internal (InterpretersFor)

interpretCologAtomic' ::
  ∀ a r .
  Member (AtomicState [a]) r =>
  InterpreterFor (Colog.Log a) r
interpretCologAtomic' =
  interpret \case
    Colog.Log msg -> atomicModify' (msg :)
{-# INLINE interpretCologAtomic' #-}

interpretCologAtomic ::
  ∀ a r .
  Member (Embed IO) r =>
  InterpretersFor [Colog.Log a, AtomicState [a]] r
interpretCologAtomic sem = do
  tv <- newTVarIO []
  runAtomicStateTVar tv (interpretCologAtomic' sem)
{-# INLINE interpretCologAtomic #-}
