{
  description = "Polysemy Effects for Logging";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let
    common = { hackage, jailbreak, ... }: {
      path = hackage "0.9.0" "14symzl1rszvk5zivv85k79anz7xyl5gaxy0sm4vhhzsgxc59msv";
      path-io = jailbreak (hackage "1.6.3" "05hcxgyf6kkz36mazd0fqwb6mjy2049gx3vh8qq9h93gfjkpp2vc");
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      polysemy-plugin = hackage "0.4.0.0" "0pah1a8h8ckbv2fq20hrikrd1p5a3bdxr03npkyixc6mv5k1rmck";
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
    };

    compat901 = { hackage, jailbreak, ... }: {
      type-errors-pretty = jailbreak;
      typerep-map = jailbreak (hackage "0.3.3.0" "15i0h2xczf4x898vjd4vgbb8n10gbsbvy2s2pfw4b3vzf0a1rayl");
    };

    compat884 = { hackage, ... }: {
      polysemy = hackage "1.5.0.0" "1xl472xqdxnp4ysyqnackpfn6wbx03rlgwmy9907bklrh557il6d";
      polysemy-plugin = hackage "0.3.0.0" "1frz0iksmg8bpm7ybnpz9h75hp6hajd20vpdvmi04aspklmr6hj0";
    };

    compat = { hackage, jailbreak, ... }: {
      co-log-core = jailbreak (hackage "0.2.1.1" "0qdbyr58d2fbw81kl5wzq4d91f0ywa4zqdd2k8xc4xf4cq2pwdq1");
      co-log = jailbreak (hackage "0.4.0.1" "05f37lq1kwlmm62n1n932l8jnqirmlf87var2n2zb0cslmv63yxg");
      co-log-polysemy = jailbreak (hackage "0.0.1.2" "17bcs8dvrhwfcyklknkqg11gxgxm2jaa7kbm6xx4vm1976abzwss");
      di-polysemy = hackage "0.2.0.0" "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
      polysemy-conc = hackage "0.1.0.3" "0g4z20il8l2hgg2m6vmc6mk6c1x7rml57q4fg9gnri06vavsxy5n";
      polysemy-test = hackage "0.3.1.6" "0bfh37l68a5chhjfr7gqcffsmvdgg5hqclxi0fc5xnqni2mg81ak";
      polysemy-time = hackage "0.1.3.1" "1ldg92dmy1nyjhkbmh5k32q94pn2c7qcfjc4yhl4lc1wnfp6r59m";
    };

    main = { hackage, source, ... }: {
      tasty-hedgehog = hackage "1.1.0.0" "0cs96s7z5csrlwj334v8zl459j5s4ws6gmjh59cv01wwvvrrjwd9";
    };
  in hix.flake {
    base = ./.;
    packages = {
      polysemy-log = ./packages/polysemy-log;
      polysemy-log-co = ./packages/polysemy-log-co;
      polysemy-log-di = ./packages/polysemy-log-di;
    };
    main = "polysemy-log-co";
    overrides = [compat common main];
    compatOverrides = { all = compat; ghc901 = [common compat901]; ghc884 = compat884; };
    ghci.extraArgs = ["-fplugin=Polysemy.Plugin"];
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
