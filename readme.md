> Log thrice, debug once.
>
> –– Г. Любенов

# About

A common interface for the polysemy logging backend adapters:

```haskell
import Polysemy.Log
import Polysemy.Log.Colog

prog :: Member Log r => Sem r ()
prog = do
  Log.debug "debugging"
  Log.error "failing"

interpretLogColog prog :: Sem [Colog.Log (LogEntry LogMessage), Embed IO] ()
interpretLogStdout prog :: Sem '[Embed IO] ()
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
