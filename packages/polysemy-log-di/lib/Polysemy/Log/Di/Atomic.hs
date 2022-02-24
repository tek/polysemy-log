-- |Description: Internal
module Polysemy.Log.Di.Atomic where

import Control.Concurrent.STM (newTVarIO)
import qualified DiPolysemy as Di
import Polysemy.Internal.Tactics (liftT)

-- |Interpret 'Di.Di' by prepending each message to a list in an 'AtomicState'.
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
{-# inline interpretDiAtomic' #-}

-- |Interpret 'Di.Di' by prepending each message to a list in an 'AtomicState', then interpret the
-- 'AtomicState' in a 'TVar'.
interpretDiAtomic ::
  ∀ level path msg r .
  Member (Embed IO) r =>
  InterpretersFor [Di.Di level path msg, AtomicState [msg]] r
interpretDiAtomic sem = do
  tv <- embed (newTVarIO [])
  runAtomicStateTVar tv (interpretDiAtomic' sem)
{-# inline interpretDiAtomic #-}
