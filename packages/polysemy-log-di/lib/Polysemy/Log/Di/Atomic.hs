module Polysemy.Log.Di.Atomic where

import qualified DiPolysemy as Di
import Polysemy (interpretH, runTSimple)
import Polysemy.Internal (InterpretersFor)
import Polysemy.Internal.Tactics (liftT)

interpretDiAtomic' ::
  ∀ level path msg r .
  Member (AtomicState [msg]) r =>
  InterpreterFor (Di.Di level path msg) r
interpretDiAtomic' =
  interpretH \case
    Di.Log _ msg -> liftT (atomicModify' (msg :))
    Di.Flush -> pureT ()
    Di.Local _ ma -> runTSimple ma
    Di.Fetch -> pureT Nothing
{-# INLINE interpretDiAtomic' #-}

interpretDiAtomic ::
  ∀ level path msg r .
  Member (Embed IO) r =>
  InterpretersFor [Di.Di level path msg, AtomicState [msg]] r
interpretDiAtomic sem = do
  tv <- newTVarIO []
  runAtomicStateTVar tv (interpretDiAtomic' sem)
{-# INLINE interpretDiAtomic #-}
