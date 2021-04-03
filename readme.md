> Log thrice, debug once.
>
> –– Г. Любенов

# About

A common interface for the polysemy logging backend adapters.

An example program using [co-log], for the simple logger with predefined formatting and a custom data type:

```haskell
import Colog (logTextStdout)
import Colog.Polysemy (runLogAction)
import Polysemy (runM)

import Polysemy.Log.Colog (interpretDataLogColog, interpretLogStdout)
import qualified Polysemy.Log.Data.DataLog as DataLog
import Polysemy.Log.Data.DataLog (DataLog)
import qualified Polysemy.Log.Data.Log as Log
import Polysemy.Log.Data.Log (Log)

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
  deriving (Eq, Show)

progData ::
  Member (DataLog Message) r =>
  Sem r ()
progData = do
  DataLog.dataLog (Message "warn" "warning!")
  DataLog.local (\ msg@Message{message} -> msg {message = "context: " <> message}) do
    DataLog.dataLog (Message "error" "segfault!")

main :: IO ()
main =
  runM do
    interpretLogStdout progSimple
    runLogAction @IO (contramap message logTextStdout) $ interpretDataLogColog @Message $ progData
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
nix-build -A packages.x86_64-linux.polysemy-log-co
```

With `nix flake`:

```
nix build
nix build '.#polysemy-log-co'
```

To run all tests:

```bash
nix flake check
```

[nix]: https://nixos.org/manual/nix/unstable
