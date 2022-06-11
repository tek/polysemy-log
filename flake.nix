{
  description = "Polysemy Effects for Logging";

  inputs = {
    hix.url = github:tek/hix;
    polysemy-conc.url = github:tek/polysemy-conc;
  };

  outputs = { hix, polysemy-conc, ... }:
  let

    ghc902 = { hackage, ... }: {
      polysemy = hackage "1.7.1.0" "0qwli1kx3hk68hqsgw65mk81bx0djw1wlk17v8ggym7mf3lailyc";
      polysemy-plugin = hackage "0.4.3.0" "1r7j1ffsd6z2q2fgpg78brl2gb0dg8r5ywfiwdrsjd2fxkinjcg1";
      typerep-map = hackage "0.5.0.0" "1j2jbl8qg88zz5yydfi3iqrqmazch038ra7cpccylxz1rdyqm9k3";
    };

    ghc922 = { hackage, jailbreak, notest, ... }: {
      chronos = jailbreak;
      polysemy = hackage "1.7.1.0" "0qwli1kx3hk68hqsgw65mk81bx0djw1wlk17v8ggym7mf3lailyc";
      polysemy-plugin = hackage "0.4.3.0" "1r7j1ffsd6z2q2fgpg78brl2gb0dg8r5ywfiwdrsjd2fxkinjcg1";
      type-errors = notest;
      typerep-map = hackage "0.5.0.0" "1j2jbl8qg88zz5yydfi3iqrqmazch038ra7cpccylxz1rdyqm9k3";
    };

    all = { hackage, source, unbreak, jailbreak, ... }: {
      co-log = jailbreak;
      co-log-core = jailbreak;
      co-log-polysemy = jailbreak unbreak;
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      polysemy-conc = hackage "0.9.0.0" "0yfbgbw58inl4q17qagdrx7pl3h258nna8w8j5nyjdqdrh25as6y";
    };

  in hix.lib.flake ({ config, lib, ... }: {
    base = ./.;
    packages = {
      polysemy-log = ./packages/polysemy-log;
      polysemy-log-co = ./packages/polysemy-log-co;
      polysemy-log-di = ./packages/polysemy-log-di;
    };
    main = "polysemy-log";
    overrides = { inherit all ghc902 ghc922; };
    deps = [polysemy-conc];
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-core";
      preludeModule = "IncipitCore";
    };
  });
}
