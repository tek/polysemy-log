{
  description = "Polysemy Effects for Logging";

  inputs = {
    hix.url = github:tek/hix;
    polysemy.url = github:polysemy-research/polysemy;
  };

  outputs = { hix, polysemy, ... }:
  let
    compat901 = { hackage, source, jailbreak, minimal, noHpack, ... }: {
      path = hackage "0.9.0" "14symzl1rszvk5zivv85k79anz7xyl5gaxy0sm4vhhzsgxc59msv";
      path-io = jailbreak (hackage "1.6.3" "05hcxgyf6kkz36mazd0fqwb6mjy2049gx3vh8qq9h93gfjkpp2vc");
      polysemy = noHpack (minimal (source.root polysemy));
      polysemy-plugin = noHpack (minimal (source.sub polysemy "polysemy-plugin"));
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
      type-errors-pretty = jailbreak;
      typerep-map = jailbreak (hackage "0.3.3.0" "15i0h2xczf4x898vjd4vgbb8n10gbsbvy2s2pfw4b3vzf0a1rayl");
    };

    common = { hackage, source, jailbreak, ... }: {
      co-log-core = jailbreak (hackage "0.2.1.1" "0qdbyr58d2fbw81kl5wzq4d91f0ywa4zqdd2k8xc4xf4cq2pwdq1");
      co-log = jailbreak (hackage "0.4.0.1" "05f37lq1kwlmm62n1n932l8jnqirmlf87var2n2zb0cslmv63yxg");
      co-log-polysemy = jailbreak (hackage "0.0.1.2" "17bcs8dvrhwfcyklknkqg11gxgxm2jaa7kbm6xx4vm1976abzwss");
      di-polysemy = hackage "0.2.0.0" "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
      polysemy = hackage "1.5.0.0" "1xl472xqdxnp4ysyqnackpfn6wbx03rlgwmy9907bklrh557il6d";
      polysemy-conc = hackage "0.1.0.2" "0ijz5l8q53d1s7i100gvjdhzv80dpd140m7a9hyam113ybglc8lg";
      polysemy-plugin = hackage "0.3.0.0" "1frz0iksmg8bpm7ybnpz9h75hp6hajd20vpdvmi04aspklmr6hj0";
      polysemy-test = hackage "0.3.1.4" "093vxf6i78a3fghn2fwgxdj9y59272q9i9px0315wg17xrg80kh6";
      polysemy-time = hackage "0.1.2.3" "039yfmpmy2d7ycs3zdcvg3hw80yrnbmwzfn9rh5a7p9gi4wzdcgd";
    };

    main = { hackage, source, ... }: {
      path = hackage "0.8.0" "0isldidz2gypw2pz399g6rn77x9mppd1mvj5h6ify4pj4mpla0pb";
      tasty-hedgehog = hackage "1.1.0.0" "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
    };
  in hix.flake {
    base = ./.;
    packages = {
      polysemy-log = "packages/polysemy-log";
      polysemy-log-co = "packages/polysemy-log-co";
      polysemy-log-di = "packages/polysemy-log-di";
    };
    main = "polysemy-log-co";
    overrides = [common main];
    compatOverrides = { all = common; ghc901 = compat901; };
    ghci.extraArgs = ["-fplugin=Polysemy.Plugin"];
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
