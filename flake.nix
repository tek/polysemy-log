{
  description = "Polysemy Effects for Logging";

  inputs.hix.url = "git+https://git.tryp.io/tek/hix";

  outputs = { hix, ... }: hix.lib.pro ({config, ...}: {
    ghcVersions = ["ghc94" "ghc96" "ghc98" "ghc910"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-log";
    gen-overrides.enable = true;

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "Torsten Schmits";
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
          "co-log ^>= 0.5"
          "co-log-concurrent ^>= 0.5"
          "co-log-polysemy ^>= 0.0.1.3"
          "polysemy-conc >= 0.12 && < 0.14"
          "polysemy-time ^>= 0.6"
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
          "polysemy-test >= 0.6 && < 0.10"
          "polysemy-time ^>= 0.6"
          "stm"
          "tasty ^>= 1.4"
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

    managed = {
      enable = true;
      lower.enable = true;
      envs.solverOverrides = {hackage, jailbreak, unbreak, ...}: {
        bytebuild = jailbreak;
        chronos = jailbreak;
        co-log = jailbreak;
        co-log-concurrent = jailbreak;
        incipit-base = jailbreak;
        incipit-core = jailbreak;
        polysemy-conc = jailbreak;
        polysemy-resume = jailbreak;
        polysemy-test = jailbreak unbreak;
        polysemy-time = jailbreak;
      };
      latest.compiler = "ghc910";
    };

    overrides = {jailbreak, unbreak, hackage, ...}: {
      polysemy-test = unbreak;
      co-log-concurrent = jailbreak;
    };

    envs.latest.overrides = {jailbreak, ...}: {
      bytebuild = jailbreak;
      chronos = jailbreak;
      incipit-base = jailbreak;
      incipit-core = jailbreak;
      polysemy-conc = jailbreak;
      polysemy-resume = jailbreak;
      polysemy-test = jailbreak;
      polysemy-time = jailbreak;
      co-log-concurrent = jailbreak;
    };

    envs.ghc94.overrides = {hackage, jailbreak, ...}: {
      co-log = hackage "0.6.1.2" "1q8d7ggwgpgqpkb6k0g967ld2sx8q3ad44iiv3f15rzqk7zwmnnx";
    };

    envs.ghc910.overrides = {hackage, jailbreak, ...}: {
      bytebuild = jailbreak;
      chronos = jailbreak;
      co-log = jailbreak;
      incipit-base = jailbreak;
      incipit-core = jailbreak;
      polysemy-conc = jailbreak;
      polysemy-resume = jailbreak;
      polysemy-test = jailbreak;
      polysemy-time = jailbreak;
    };

  });
}
