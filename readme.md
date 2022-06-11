> Log thrice, debug once.
>
> –– Г. Любенов

# About

A common interface for the polysemy logging backend adapters.

An example program using a simple logger with a custom data type:

```haskell
import Polysemy.Conc (runConc)

import qualified Polysemy.Log as Log
import Polysemy.Log (DataLog, Log, interpretDataLogStdout, interpretLogStdoutConc)
import qualified Polysemy.Log.Effect.DataLog as DataLog

progSimple ::
  Member Log r =>
  Sem r ()
progSimple = do
  Log.debug "debug"
  Log.warn "warn"

data Message =
  Message {
    severity :: Text,
    message :: Text
  }
  deriving stock (Eq, Show)

progData ::
  Member (DataLog Message) r =>
  Sem r ()
progData = do
  DataLog.dataLog (Message "warn" "warning!")
  DataLog.local (\ msg@Message{message} -> msg {message = "context: " <> message}) do
    DataLog.dataLog (Message "error" "segfault!")

main :: IO ()
main =
  runConc do
    interpretLogStdoutConc progSimple
    interpretDataLogStdout progData
```

For more documentation, please consult Hackage:
* [polysemy-log](https://hackage.haskell.org/package/polysemy-log)
* [polysemy-log-co](https://hackage.haskell.org/package/polysemy-log-co)
* [polysemy-log-di](https://hackage.haskell.org/package/polysemy-log-di)

# Building the Project

The build is defined in [nix], supporting `flake` and legacy `nix-build`.

With `nix-build`:

```bash
nix-build -A defaultPackage
nix-build -A packages.x86_64-linux.polysemy-log
```

With `nix flake`:

```
nix build
nix build '.#polysemy-log
```

To run all tests:

```bash
nix flake check
```

[nix]: https://nixos.org/manual/nix/unstable
