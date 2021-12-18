{
  description = "Polysemy Effects for Logging";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let
    all = { hackage, jailbreak, ... }: {
      exon = hackage "0.2.0.1" "0hs0xrh1v64l1n4zqx3rqfjdh6czxm7av85kj1awya9zxcfcy5cl";
      flatparse = hackage "0.3.1.0" "15nx2p08pqka0136xfppw344a60rn3fvsx4adiz15k37cyj25zi2";
      co-log = jailbreak (hackage "0.4.0.1" "05f37lq1kwlmm62n1n932l8jnqirmlf87var2n2zb0cslmv63yxg");
      co-log-polysemy = jailbreak (hackage "0.0.1.2" "17bcs8dvrhwfcyklknkqg11gxgxm2jaa7kbm6xx4vm1976abzwss");
    };

    ghc901 = { hackage, jailbreak, ... }: {
      co-log-core = jailbreak (hackage "0.2.1.1" "0qdbyr58d2fbw81kl5wzq4d91f0ywa4zqdd2k8xc4xf4cq2pwdq1");
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      polysemy-plugin = hackage "0.4.0.0" "0pah1a8h8ckbv2fq20hrikrd1p5a3bdxr03npkyixc6mv5k1rmck";
      relude = hackage "1.0.0.1" "164p21334c3pyfzs839cv90438naxq9pmpyvy87113mwy51gm6xn";
      typerep-map = hackage "0.4.0.0" "1i8r0i8s47kz5fmcwqj1y99gmxx0sjqk5nhxiwgsa4z84cdkac7c";
    };

    ghc884 = { hackage, jailbreak, unbreak, ... }: {
      polysemy = hackage "1.5.0.0" "1xl472xqdxnp4ysyqnackpfn6wbx03rlgwmy9907bklrh557il6d";
      polysemy-conc = hackage "0.3.0.0" "0vqp4q3pgxgf5azr87vmlk5irxdd7491gayp7n74373nhrndfd45";
      polysemy-plugin = hackage "0.3.0.0" "1frz0iksmg8bpm7ybnpz9h75hp6hajd20vpdvmi04aspklmr6hj0";
      polysemy-test = hackage "0.3.1.7" "0j33f5zh6gyhl86w8kqh6nm02915b4n32xikxc4hwcy7p5l7cl34";
      polysemy-time = hackage "0.1.4.0" "0hwx89cilmsdjs3gb5w6by87ysy24scgj5zg77vbfnqpzr3ifrwh";
    };

  in hix.flake {
    base = ./.;
    packages = {
      polysemy-log = ./packages/polysemy-log;
      polysemy-log-co = ./packages/polysemy-log-co;
      polysemy-log-di = ./packages/polysemy-log-di;
    };
    main = "polysemy-log-co";
    overrides = {
      inherit all ghc901 ghc884;
    };
    versionFile = "ops/hpack/shared/meta.yaml";
  };
}
