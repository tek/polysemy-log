-- |Description: Internal
module Polysemy.Log.Colog.Atomic where

import qualified Colog.Polysemy as Colog
import Control.Concurrent.STM (newTVarIO)

-- |Interpret 'Colog.Log' by prepending each message to a list in an 'AtomicState'.
interpretCologAtomic' ::
  ∀ a r .
  Member (AtomicState [a]) r =>
  InterpreterFor (Colog.Log a) r
interpretCologAtomic' =
  interpret \case
    Colog.Log msg -> atomicModify' (msg :)
{-# inline interpretCologAtomic' #-}

-- |Interpret 'Colog.Log' by prepending each message to a list in an 'AtomicState', then interpret the 'AtomicState' in
-- a 'Control.Concurrent.STM.TVar'.
interpretCologAtomic ::
  ∀ a r .
  Member (Embed IO) r =>
  InterpretersFor [Colog.Log a, AtomicState [a]] r
interpretCologAtomic sem = do
  tv <- embed (newTVarIO [])
  runAtomicStateTVar tv (interpretCologAtomic' sem)
{-# inline interpretCologAtomic #-}
