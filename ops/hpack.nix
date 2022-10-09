{ config, lib, ... }:
with builtins;
with lib;
let

  mergeAttr = a: b:
  if isAttrs a
  then merge a b
  else if isList a
  then a ++ b
  else b;

  merge = l: r:
  let
    f = name:
    if hasAttr name l && hasAttr name r
    then mergeAttr l.${name} r.${name}
    else l.${name} or r.${name};
  in genAttrs (concatMap attrNames [l r]) f;

  paths = name: {
    when = {
      condition = false;
      generated-other-modules = ["Paths_${replaceStrings ["-"] ["_"] name}"];
    };
  };

  meta = {
    version = import ./version.nix;
    license = "BSD-2-Clause-Patent";
    license-file = "LICENSE";
    author = "Torsten Schmits";
    maintainer = "hackage@tryp.io";
    copyright = "2022 Torsten Schmits";
    category = "Logging";
    build-type = "Simple";
    github = "tek/polysemy-log";
  };

  options.ghc-options = [
    "-Wall"
    "-Wredundant-constraints"
    "-Wincomplete-uni-patterns"
    "-Wmissing-deriving-strategies"
    "-Widentities"
    "-Wunused-packages"
  ];

  dependencies = [
      { name = "base"; version = ">= 4.12 && < 5"; mixin = "hiding (Prelude)"; }
      { name = "incipit-core"; version = ">= 0.3"; mixin = ["(IncipitCore as Prelude)" "hiding (IncipitCore)"]; }
      "polysemy"
    ];

  project = name: doc: merge (meta // { library = paths name; } // options) {
    inherit name;
    description = "See https://hackage.haskell.org/package/${name}/docs/${doc}.html";
    library = {
      source-dirs = "lib";
      inherit dependencies;
    };
    default-extensions = config.ghci.extensions;
    extra-source-files = ["changelog.md" "readme.md"];
  };

  exe = name: dir: merge (paths name // {
    main = "Main.hs";
    source-dirs = dir;
    inherit dependencies;
    ghc-options = [
      "-threaded"
      "-rtsopts"
      "-with-rtsopts=-N"
    ];
  });

in {

  polysemy-log = merge (project "polysemy-log" "Polysemy-Log") {
    synopsis = "Polysemy effects for logging";
    library.dependencies = [
      "polysemy >= 1.6"
      "ansi-terminal >= 0.10.3"
      "async"
      "polysemy-conc >= 0.9"
      "polysemy-time >= 0.5"
      "stm"
      "time"
    ];
    tests.polysemy-log-unit = exe "polysemy-log" "test" {
      dependencies = [
        "polysemy-log"
        "polysemy-conc"
        "polysemy-plugin"
        "polysemy-test >= 0.6"
        "polysemy-time"
        "tasty"
        "time"
      ];
    };
    benchmarks.space = exe "polysemy-log" "benchmark" {
      dependencies = [
        "polysemy-log"
        "polysemy-conc"
        "polysemy-plugin"
      ];
    };
  };

  polysemy-log-co = merge (project "polysemy-log-co" "Polysemy-Log-Colog") {
    synopsis = "Colog adapters for Polysemy.Log";
    library.dependencies = [
      "co-log >= 0.4.0.1"
      "co-log-polysemy >= 0.0.1.2"
      "polysemy-conc >= 0.9"
      "polysemy-time >= 0.5"
      "polysemy-log"
      "stm"
    ];
    tests.polysemy-log-co-unit = exe "polysemy-log-co" "test" {
      dependencies = [
      "co-log"
      "co-log-polysemy"
      "polysemy-log"
      "polysemy-log-co"
      "polysemy-test >= 0.6"
      "polysemy-time"
      "stm"
      "tasty"
      ];
    };
  };

  polysemy-log-di = merge (project "polysemy-log-di" "Polysemy-Log-Di") {
    synopsis = "Di adapters for Polysemy.Log";
    library.dependencies = [
      "polysemy-log"
      "di-polysemy >= 0.2"
      "polysemy-conc >= 0.9"
      "polysemy-time >= 0.5"
      "stm"
    ];
    tests.polysemy-log-di-unit = exe "polysemy-log-di" "test" {
      dependencies = [
      "polysemy-log"
      "polysemy-log-di"
      "polysemy-test >= 0.6"
      "stm"
      "tasty"
      ];
    };
  };

}
