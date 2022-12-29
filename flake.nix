{
  description = "Polysemy Effects for Logging";

  inputs = {
    hix.url = git+https://git.tryp.io/tek/hix;
    polysemy-conc.url = git+https://git.tryp.io/tek/polysemy-conc?tag=v0.12.0.0;
  };

  outputs = { hix, polysemy-conc, ... }:
  let

    all = { hackage, source, jailbreak, unbreak, ... }: {
      co-log = jailbreak (hackage "0.5.0.0" "1ngdm3dyxlj8nxf3khhp6p88lc3y80d35n0sgvb7fkw5v5w0za8z");
      co-log-polysemy = jailbreak;
      co-log-concurrent = jailbreak unbreak;
      polysemy-conc = hackage "0.12.0.0" "0ckwmnl4d65p49r1bp8jh07fbmx06mshsx20j1z40x5immf97pxx";
    };

  in hix.lib.pro ({ config, lib, ... }: {
    packages = {
      polysemy-log = ./packages/polysemy-log;
      polysemy-log-co = ./packages/polysemy-log-co;
      polysemy-log-di = ./packages/polysemy-log-di;
    };
    main = "polysemy-log";
    devGhc.compiler = "ghc902";
    overrides = { inherit all; };
    deps = [polysemy-conc];
    hpack.packages = import ./ops/hpack.nix { inherit config lib; };
    hackage.versionFile = "ops/version.nix";
    ghci = {
      preludePackage = "incipit-core";
      preludeModule = "IncipitCore";
    };
  });
}
