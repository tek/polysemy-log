{
  description = "Polysemy Effects for Logging";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = { hix, ... }: hix.lib.pro ({config, ...}: {
    ghcVersions = ["ghc98" "ghc910" "ghc912"];
    release.versionFile = "ops/version.nix";
    main = "polysemy-log";
    gen-overrides.enable = true;

    packages.polysemy-log = {
      src = ./packages/polysemy-log;

      cabal.meta.synopsis = "Polysemy effects for logging";

      library = {
        enable = true;
        dependencies = [
          "ansi-terminal"
          "async"
          "polysemy-conc"
          "polysemy-time"
          "stm"
          "time"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-log"
          "polysemy-conc"
          "polysemy-plugin"
          "polysemy-test"
          "polysemy-time"
          "tasty"
          "time"
        ];
      };

      benchmarks.space = {
        source-dirs = "benchmark";
        dependencies = [
          "polysemy-log"
          "polysemy-conc"
          "polysemy-plugin"
        ];
      };

    };

    packages.polysemy-log-co = {
      src = ./packages/polysemy-log-co;

      cabal.meta.synopsis = "Colog adapters for polysemy-log";

      library = {
        enable = true;
        dependencies = [
          "co-log"
          "co-log-concurrent"
          "co-log-polysemy"
          "polysemy-conc"
          "polysemy-time"
          config.packages.polysemy-log.dep.minor
          "stm"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "co-log"
          "co-log-concurrent"
          "co-log-polysemy"
          "polysemy-log"
          "polysemy-log-co"
          "polysemy-test"
          "polysemy-time"
          "stm"
          "tasty"
        ];
      };

    };

    packages.polysemy-log-di = {
      src = ./packages/polysemy-log-di;

      cabal.meta.synopsis = "Di adapters for polysemy-log";

      library = {
        enable = true;
        dependencies = [
          config.packages.polysemy-log.dep.minor
          "di-polysemy"
          "polysemy-conc"
          "polysemy-time"
          "stm"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-log"
          "polysemy-log-di"
          "polysemy-test"
          "stm"
          "tasty"
        ];
      };

    };

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "Torsten Schmits";
      language = "GHC2021";
      dependencies = ["polysemy"];
      prelude = {
        enable = true;
        package = "incipit-core";
        module = "IncipitCore";
      };
      meta = {
        maintainer = "hackage@tryp.io";
        category = "Logging";
        github = "tek/polysemy-log";
        extra-source-files = ["readme.md" "changelog.md"];
      };
    };

    managed = {
      enable = true;
      lower.enable = true;
      sets = "each";
      latest.compiler = "ghc912";
      lower.compiler = "ghc94";
    };

    package-sets.ghc912.overrides = {jailbreak, ...}: {
      polysemy-conc = jailbreak;
      polysemy-resume = jailbreak;
      polysemy-test = jailbreak;
      polysemy-time = jailbreak;
    };

    hackage.repos."hackage.haskell.org".user = "tek";

    internal.hixCli.dev = true;

  });
}
