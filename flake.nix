{
  description = "Polysemy Effects for Logging";

  inputs = {
    hix.url = "git+https://git.tryp.io/tek/hix";
    polysemy-conc.url = "git+https://git.tryp.io/tek/polysemy-conc";
  };

  outputs = {hix, polysemy-conc, ...}: hix.lib.pro ({config, ...}: {
    ghcVersions = ["ghc92" "ghc94" "ghc96"];
    hackage.versionFile = "ops/version.nix";
    main = "polysemy-log";
    deps = [polysemy-conc];
    compiler = "ghc94";
    gen-overrides.enable = true;

    envs.dev.overrides = {hackage, ...}: {
      polysemy-conc = hackage "0.13.0.0" "13y02kpnpx45fvmklra78q31abpdsvlkcqv6crpkzf4212n88nd4";
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
          "ansi-terminal >= 0.10.3 && < 0.12"
          "async"
          "polysemy-conc >= 0.12 && < 0.14"
          "polysemy-time ^>= 0.6"
          "stm"
          "time"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-log"
          "polysemy-conc >= 0.12 && < 0.14"
          "polysemy-plugin ^>= 0.4.4"
          "polysemy-test >= 0.6 && < 0.9"
          "polysemy-time ^>= 0.6"
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

    # packages.polysemy-log-co = {
    #   src = ./packages/polysemy-log-co;

    #   cabal.meta.synopsis = "Colog adapters for polysemy-log";

    #   library = {
    #     enable = true;
    #     dependencies = [
    #       "co-log ^>= 0.5"
    #       "co-log-concurrent ^>= 0.5"
    #       "co-log-polysemy ^>= 0.0.1.3"
    #       "polysemy-conc >= 0.12 && < 0.14"
    #       "polysemy-time ^>= 0.6"
    #       config.packages.polysemy-log.dep.minor
    #       "stm"
    #     ];
    #   };

    #   test = {
    #     enable = true;
    #     dependencies = [
    #       "co-log"
    #       "co-log-concurrent"
    #       "co-log-polysemy"
    #       "polysemy-log"
    #       "polysemy-log-co"
    #       "polysemy-test >= 0.6 && < 0.9"
    #       "polysemy-time ^>= 0.6"
    #       "stm"
    #       "tasty ^>= 1.4"
    #     ];
    #   };

    # };

    packages.polysemy-log-di = {
      src = ./packages/polysemy-log-di;

      cabal.meta.synopsis = "Di adapters for polysemy-log";

      library = {
        enable = true;
        dependencies = [
          config.packages.polysemy-log.dep.minor
          "di-polysemy ^>= 0.2"
          "polysemy-conc >= 0.12 && < 0.14"
          "polysemy-time ^>= 0.6"
          "stm"
        ];
      };

      test = {
        enable = true;
        dependencies = [
          "polysemy-log"
          "polysemy-log-di"
          "polysemy-test >= 0.6 && < 0.9"
          "stm"
          "tasty ^>= 1.4"
        ];
      };

    };

  });
}
