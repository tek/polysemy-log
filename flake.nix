{
  description = "Polysemy effects for logging";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/cfed29bfcb28259376713005d176a6f82951014a;
    flake-utils.url = github:numtide/flake-utils;
    tryp-hs.url = github:tek/tryp-hs;
    # tryp-hs.url = path:/home/tek/code/tek/nix/tryp-hs;
    tryp-hs.inputs.nixpkgs.follows = "nixpkgs";
    co-log = {
      url = github:kowainik/co-log;
      flake = false;
    };
    di-polysemy = {
      url = github:nitros12/di-polysemy;
      flake = false;
    };
    polysemy = {
      url = github:polysemy-research/polysemy;
      flake = false;
    };
    polysemy-time = {
      url = github:tek/polysemy-time;
      flake = false;
    };
    polysemy-test = {
      url = github:tek/polysemy-test;
      flake = false;
    };
  };

  outputs = { self, nixpkgs, tryp-hs, flake-utils, ... }@inputs:
  flake-utils.lib.eachSystem ["x86_64-linux"] (system:
    let
      project = tryp-hs.project {
        inherit system;
        base = ./.;
        compiler = "ghc8102";
        packages = {
          polysemy-log = "packages/polysemy-log";
          polysemy-log-co = "packages/polysemy-log-co";
          polysemy-log-di = "packages/polysemy-log-di";
        };
        overrides = import ./ops/nix/overrides.nix inputs;
        ghci = {
          basicArgs = ["-Wall" "-Werror"];
        };
        ghcid.prelude = "packages/polysemy-log/lib/Prelude.hs";
        packageDir = "packages";
        cabal2nixOptions = "--no-hpack";
      };
    in {
      defaultPackage = project.ghc.polysemy-log-co;
      devShell = project.ghcid-flake.shell;
      legacyPackages = {
        run = project.ghcid-flake.run;
        cabal = project.cabal;
        tags = project.tags.projectTags;
        hpack = project.hpack-script {};
      };
      packages = {
        polysemy-log = project.ghc.polysemy-log;
        polysemy-log-co = project.ghc.polysemy-log-co;
        polysemy-log-di = project.ghc.polysemy-log-di;
      };
      checks = {
        polysemy-log = project.ghc.polysemy-log;
        polysemy-log-co = project.ghc.polysemy-log-co;
        polysemy-log-di = project.ghc.polysemy-log-di;
      };
    }
  );
}
