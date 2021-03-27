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
