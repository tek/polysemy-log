module Polysemy.Log.Data.LogMetadata where

data LogMetadata a :: Effect where
  Annotated :: HasCallStack => a -> LogMetadata a m ()

makeSem ''LogMetadata
