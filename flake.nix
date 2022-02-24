{
  description = "Polysemy Effects for Logging";

  inputs.hix.url = github:tek/hix;

  outputs = { hix, ... }:
  let

    ghc902 = { hackage, jailbreak, ... }: {
      polysemy = hackage "1.7.1.0" "0qwli1kx3hk68hqsgw65mk81bx0djw1wlk17v8ggym7mf3lailyc";
      polysemy-plugin = hackage "0.4.3.0" "1r7j1ffsd6z2q2fgpg78brl2gb0dg8r5ywfiwdrsjd2fxkinjcg1";
      typerep-map = hackage "0.5.0.0" "1j2jbl8qg88zz5yydfi3iqrqmazch038ra7cpccylxz1rdyqm9k3";
    };

    ghc921 = { hackage, jailbreak, notest, ... }: {
      chronos = jailbreak;
      polysemy = hackage "1.7.1.0" "0qwli1kx3hk68hqsgw65mk81bx0djw1wlk17v8ggym7mf3lailyc";
      polysemy-plugin = hackage "0.4.3.0" "1r7j1ffsd6z2q2fgpg78brl2gb0dg8r5ywfiwdrsjd2fxkinjcg1";
      type-errors = notest;
      typerep-map = hackage "0.5.0.0" "1j2jbl8qg88zz5yydfi3iqrqmazch038ra7cpccylxz1rdyqm9k3";
    };

    all = { hackage, unbreak, jailbreak, ... }: {
      co-log = jailbreak;
      co-log-core = jailbreak;
      co-log-polysemy = jailbreak unbreak;
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      polysemy-conc = hackage "0.6.0.0" "16b20nlij227pmd2qxq5ad9fr6496y0ammmw2y95x66dz85c5yg4";
      polysemy-plugin = hackage "0.4.1.0" "117g92l1ppsqd3w0rqjrxfk0lx6yndd54rpymgxljilnv43zg29s";
      polysemy-resume = hackage "0.3.0.0" "0kv8x41cxrdwxh7xw8vrywl7sgjkigl84xl7gv038gijh7pvd358";
      polysemy-test = hackage "0.4.0.1" "038n31xxid72vrckr3afgkvbsvqhf9q4b912agg24ppjzckq2s15";
      polysemy-time = hackage "0.3.0.0" "0mgiq70b35q7ymfwvb8fv291l3f8v7k0z7w6909h922d6jgl4jgp";
      incipit-base = hackage "0.1.0.1" "0bcygln28zhrp0jqsm1z8p45k7faas5yamwddz2narsgpkzirx4y";
      incipit-core = hackage "0.1.0.1" "1bdkw0q4db3k73i3jjhil96p3rz3gw7mq9jcpcphamld72f4f5ni";
    };

  in hix.lib.flake {
    base = ./.;
    packages = {
      polysemy-log = ./packages/polysemy-log;
      polysemy-log-co = ./packages/polysemy-log-co;
      polysemy-log-di = ./packages/polysemy-log-di;
    };
    main = "polysemy-log";
    overrides = { inherit all ghc921 ghc902; };
    hackage.versionFile = "ops/hpack/shared/meta.yaml";
    ghci.preludePackage = "incipit-core";
  };
}
