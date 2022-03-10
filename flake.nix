{
  description = "Polysemy Effects for Logging";

  inputs.hix.url = github:tek/hix;
  inputs.polysemy-conc.url = github:tek/polysemy-conc;

  outputs = { hix, polysemy-conc, ... }:
  let

    ghc902 = { hackage, ... }: {
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
      incipit-base = hackage "0.2.0.0" "12979prkjk1kr1556mwsgf1v04rzd67xg68x6q9pnvm41pxbvk5w";
      incipit-core = hackage "0.2.0.0" "1v4xrqwcylbk32b6hzl6i7k0964varw2iy73s7mkjxpxpdg432ci";
      polysemy = hackage "1.6.0.0" "15k51ysrfcbkww1562g8zvrlzymlk2rxhcsz9ipsb0q6h571qgvf";
      polysemy-conc = hackage "0.7.0.0" "1nin6k5vcpj9lll9ravk42rpbdymrjaawvzbdc8b2bivf39d2dfj";
      polysemy-plugin = hackage "0.4.1.0" "117g92l1ppsqd3w0rqjrxfk0lx6yndd54rpymgxljilnv43zg29s";
      polysemy-resume = hackage "0.4.0.0" "1a2l2k9jjgm9q4k68rfqdizcavwwr856ql5ld40g9k0rvkrq5wn1";
      polysemy-test = hackage "0.5.0.0" "0lzbf7bfmcima8ib4hv68bjciy2n5s4x493g0a5cmdjj6pcg2d2k";
      polysemy-time = hackage "0.4.0.0" "1dddg61d8djfwlc85bz99vwm23621cdjwxd1llcc4ng3afgx5bg9";
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
    deps = [polysemy-conc];
    hackage.versionFile = "ops/hpack/shared/meta.yaml";
    ghci.preludePackage = "incipit-core";
  };
}
