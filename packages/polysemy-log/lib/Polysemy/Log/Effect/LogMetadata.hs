-- |Description: Internal
module Polysemy.Log.Effect.LogMetadata where

-- |Internal effect used as an intermediate stage between 'Polysemy.Log.Log' and 'Polysemy.Log.DataLog', for the purpose
-- of isolating the metadata annotation task.
--
-- The type of metadata is arbitrary and chosen in interpreters, but this exposes a 'HasCallStack' dependency since it's
-- the primary purpose.
data LogMetadata msg :: Effect where
  -- |Schedule a message to be annotated and logged.
  Annotated :: HasCallStack => msg -> LogMetadata msg m ()

-- |Schedule a message to be annotated and logged.
annotated ::
  HasCallStack =>
  Member (LogMetadata msg) r =>
  msg ->
  Sem r ()
annotated msg =
  send (Annotated msg)
