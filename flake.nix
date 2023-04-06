{
  description = "Polysemy Effects for Logging";

  inputs = {
    hix.url = "git+https://git.tryp.io/tek/hix";
    polysemy-conc.url = "git+https://git.tryp.io/tek/polysemy-conc";
  };

  outputs = { hix, polysemy-conc, ... }: hix.lib.pro {
    ghcVersions = ["ghc810" "ghc90" "ghc92" "ghc94"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-log";
    deps = [polysemy-conc];

    overrides = { hackage, source, jailbreak, unbreak, ... }: {
      co-log = jailbreak (hackage "0.5.0.0" "1ngdm3dyxlj8nxf3khhp6p88lc3y80d35n0sgvb7fkw5v5w0za8z");
      co-log-polysemy = jailbreak;
      co-log-concurrent = jailbreak unbreak;
      polysemy-conc = hackage "0.12.1.0" "0cm2hkr58fhxr2w5pmq01m66qmd1yfzikjx5v7c0xsk8mdjv9f6g";
    };

    cabal = {
      license = "BSD-2-Clause-Patent";
      license-file = "LICENSE";
      author = "Torsten Schmits";
      dependencies = ["polysemy ^>= 1.9"];
      prelude = {
        enable = true;
        package = {
          name = "incipit-core";
          version = ">= 0.4 && < 0.6";
        };
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
          "ansi-terminal >= 0.10.3"
          "async"
          "polysemy-conc ^>= 0.12"
          "polysemy-time ^>= 0.6"
          "stm"
          "time"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-log"
          "polysemy-conc"
          "polysemy-plugin ^>= 0.4.4"
          "polysemy-test >= 0.6 && < 0.8"
          "polysemy-time"
          "tasty ^>= 1.4"
          "time"
        ];
      };

      benchmarks.space = {
        source-dirs = "benchmark";
        dependencies = [
          "polysemy-log"
          "polysemy-conc"
          "polysemy-plugin ^>= 0.4.4"
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
          "polysemy-conc ^>= 0.12"
          "polysemy-time ^>= 0.6"
          "polysemy-log ^>= ${import ./ops/version.nix}"
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
          "polysemy-test >= 0.6"
          "polysemy-time"
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
          "polysemy-log ^>= ${import ./ops/version.nix}"
          "di-polysemy ^>= 0.2"
          "polysemy-conc ^>= 0.12"
          "polysemy-time ^>= 0.6"
          "stm"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-log"
          "polysemy-log-di"
          "polysemy-test >= 0.6"
          "stm"
          "tasty ^>= 1.4"
        ];
      };

    };

  };
}
