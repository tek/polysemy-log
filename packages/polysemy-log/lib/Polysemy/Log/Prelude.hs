{-# options_haddock hide #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Polysemy.Log.Prelude (
  module Polysemy.Log.Prelude,
  module GHC.Err,
  module Polysemy,
  module Polysemy.AtomicState,
  module Relude,
) where

import qualified Data.String.Interpolate as Interpolate
import GHC.Err (undefined)
import Language.Haskell.TH.Quote (QuasiQuoter)
import Polysemy (
  Effect,
  EffectRow,
  Embed,
  Final,
  InterpreterFor,
  Member,
  Members,
  Sem,
  WithTactics,
  embed,
  embedToFinal,
  interpret,
  makeSem,
  pureT,
  raise,
  raiseUnder,
  raiseUnder2,
  raiseUnder3,
  reinterpret,
  runFinal,
  )
import Polysemy.AtomicState (AtomicState, atomicGet, atomicGets, atomicModify', atomicPut, runAtomicStateTVar)
import Relude hiding (
  Reader,
  State,
  Sum,
  Type,
  ask,
  asks,
  evalState,
  filterM,
  get,
  gets,
  hoistEither,
  modify,
  modify',
  put,
  readFile,
  runReader,
  runState,
  state,
  trace,
  traceShow,
  undefined,
  )

qt :: QuasiQuoter
qt =
  Interpolate.i
{-# INLINE qt #-}
