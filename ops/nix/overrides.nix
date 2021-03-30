inputs:
{
  hackage,
  ...
}:
self: super:
let
  inherit (hackage) pack cabal2nix cabal2nixNoHpack subPkg subPkgNoHpack github jailbreak;

  versions = [
    (pack "typerep-map" "0.3.3.0" "15i0h2xczf4x898vjd4vgbb8n10gbsbvy2s2pfw4b3vzf0a1rayl")
  ];
  versionOverrides = builtins.listToAttrs versions;

  custom = {
    co-log-core = subPkg "co-log-core" "co-log-core" inputs.co-log;
    co-log = subPkg "co-log" "co-log" inputs.co-log;
    co-log-polysemy = jailbreak (subPkg "co-log-polysemy" "co-log-polysemy" inputs.co-log);
    di-polysemy = cabal2nix "di-polysemy" inputs.di-polysemy;
    polysemy = cabal2nixNoHpack "polysemy" inputs.polysemy;
    polysemy-conc = subPkg "packages/conc" "polysemy-conc" inputs.polysemy-conc;
    polysemy-test = subPkg "packages/polysemy-test" "polysemy-test" inputs.polysemy-test;
    polysemy-time = subPkg "packages/time" "polysemy-time" inputs.polysemy-time;
  };
in
  versionOverrides // custom
