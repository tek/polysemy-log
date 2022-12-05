{
  description = "Polysemy Effects for Logging";

  inputs = {
    hix.url = git+https://git.tryp.io/tek/hix;
    polysemy-conc.url = git+https://git.tryp.io/tek/polysemy-conc?tag=v0.9.0.0;
  };

  outputs = { hix, polysemy-conc, ... }:
  let

    ghc902 = { hackage, ... }: {
      polysemy = hackage "1.7.1.0" "0qwli1kx3hk68hqsgw65mk81bx0djw1wlk17v8ggym7mf3lailyc";
      polysemy-plugin = hackage "0.4.3.0" "1r7j1ffsd6z2q2fgpg78brl2gb0dg8r5ywfiwdrsjd2fxkinjcg1";
    };

    ghc924 = { hackage, jailbreak, notest, ... }: {
      polysemy = hackage "1.7.1.0" "0qwli1kx3hk68hqsgw65mk81bx0djw1wlk17v8ggym7mf3lailyc";
      polysemy-plugin = hackage "0.4.3.0" "1r7j1ffsd6z2q2fgpg78brl2gb0dg8r5ywfiwdrsjd2fxkinjcg1";
      type-errors = notest;
    };

    all = { hackage, jailbreak, unbreak, ... }: {
      co-log = hackage "0.5.0.0" "1ngdm3dyxlj8nxf3khhp6p88lc3y80d35n0sgvb7fkw5v5w0za8z";
      co-log-polysemy = jailbreak;
      co-log-concurrent = jailbreak unbreak;
    };

  in hix.lib.pro ({ config, lib, ... }: {
    packages = {
      polysemy-log = ./packages/polysemy-log;
      polysemy-log-co = ./packages/polysemy-log-co;
      polysemy-log-di = ./packages/polysemy-log-di;
    };
    main = "polysemy-log";
    devGhc.compiler = "ghc902";
    overrides = { inherit all ghc902 ghc924; };
    deps = [polysemy-conc];
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-core";
      preludeModule = "IncipitCore";
    };
  });
}
