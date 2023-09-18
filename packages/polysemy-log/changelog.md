# 0.10.0.0

# 0.7.1.0

* Plug a space leak in the concurrent logger.

# 0.7.1.0

* Add parser for `Severity`.
* Export `interpretDataLog`.
* Export `local`.

# 0.4.3.0

* Set std streams to line buffering.

# 0.4.0.0

* Add interceptors for setting the log level.

# 0.3.0.0

* Add concurrent interpreters for stdout and stderr.
* Add stdout interpreters.

# 0.2.1.0

* Add naive stderr interpreters for `DataLog` and `Log`.

# 0.2.0.0

* `DataLog` got a second constructor, `Local`. It takes a higher-order `Sem` and a transformation function, the latter
  of which is applied to all messages logged within the former.
  This allows context manipulation for blocks of code.
* `interceptDataLogConc` adds support for concurrent processing of log messages to any interpretation of `DataLog`.
