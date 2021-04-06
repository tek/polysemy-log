{
  description = "Polysemy effects for logging";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/c0e881852006b132236cbf0301bd1939bb50867e;
    tryp-hs = {
      url = github:tek/tryp-hs;
      inputs.nixpkgs.follows = "nixpkgs";
    };
    co-log = {
      url = github:kowainik/co-log;
      flake = false;
    };
    di-polysemy = {
      url = github:nitros12/di-polysemy;
      flake = false;
    };
    polysemy-conc.url = github:tek/polysemy-conc;
    polysemy-time.follows = "polysemy-conc/polysemy-time";
    polysemy-test.follows = "polysemy-conc/polysemy-test";
  };

  outputs = { tryp-hs, polysemy-time, polysemy-test, polysemy-conc, ... }@inputs:
  let
    common = { hackage, source, jailbreak, ... }: {
      polysemy = hackage "1.5.0.0" "1xl472xqdxnp4ysyqnackpfn6wbx03rlgwmy9907bklrh557il6d";
      polysemy-plugin = hackage "0.3.0.0" "1frz0iksmg8bpm7ybnpz9h75hp6hajd20vpdvmi04aspklmr6hj0";
      co-log = jailbreak (hackage "0.4.0.1" "05f37lq1kwlmm62n1n932l8jnqirmlf87var2n2zb0cslmv63yxg");
      co-log-polysemy = jailbreak (hackage "0.0.1.2" "17bcs8dvrhwfcyklknkqg11gxgxm2jaa7kbm6xx4vm1976abzwss");
      di-polysemy = hackage "0.2.0.0" "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
      typerep-map = hackage "0.3.3.0" "15i0h2xczf4x898vjd4vgbb8n10gbsbvy2s2pfw4b3vzf0a1rayl";
    };

    overrides = { hackage, source, ... }@args: common args // {
      path = hackage "0.8.0" "0isldidz2gypw2pz399g6rn77x9mppd1mvj5h6ify4pj4mpla0pb";
      tasty-hedgehog = hackage "1.1.0.0" "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
      polysemy-test = source.sub polysemy-test "packages/polysemy-test";
      polysemy-time = source.sub polysemy-time "packages/time";
      polysemy-chronos = source.sub polysemy-time "packages/chronos";
      polysemy-conc = source.sub polysemy-conc "packages/conc";
    };

    compatOverrides = { hackage, source, only, ... }@args: common args // {
      polysemy-test = hackage "0.3.1.1" "0x0zg1kljr7a1mwmm3zrmha5inz3l2pkldnq65fvsig8f3x8rsar";
      polysemy-time = hackage "0.1.2.1" "09l8r5fx0vnapdn8p0cwiwprgg3i67m58dd4j5hcdhw34gfqnnsr";
      polysemy-chronos = hackage "0.1.2.1" "0layan6jxg857n2dmxwnylichnk2ynlpxih5iya3q8x2nbndpbl2";
      polysemy-conc = hackage "0.1.0.2" "0ijz5l8q53d1s7i100gvjdhzv80dpd140m7a9hyam113ybglc8lg";
    };
  in
  tryp-hs.flake {
    base = ./.;
    compiler = "ghc8104";
    packages = {
      polysemy-log = "packages/polysemy-log";
      polysemy-log-co = "packages/polysemy-log-co";
      polysemy-log-di = "packages/polysemy-log-di";
    };
    main = "polysemy-log-co";
    overrides = tryp-hs.overrides overrides;
    compatOverrides = tryp-hs.overrides compatOverrides;
    ghci.extraArgs = ["-fplugin=Polysemy.Plugin"];
    ghcid.prelude = "packages/polysemy-log/lib/Prelude.hs";
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
