{
dev = {
};
ghc910 = {
};
ghc94 = {
  co-log = {
  meta = {
    sha256 = "1q8d7ggwgpgqpkb6k0g967ld2sx8q3ad44iiv3f15rzqk7zwmnnx";
    ver = "0.6.1.2";
  };
  drv = { mkDerivation, ansi-terminal, base, bytestring, chronos
, co-log-core, containers, contravariant, dependent-map
, dependent-sum, directory, doctest, exceptions, filepath, Glob
, hedgehog, lib, mtl, text, transformers, unliftio-core, vector
}:
mkDerivation {
  pname = "co-log";
  version = "0.6.1.2";
  src = /nix/store/dvl21llqs3c9ivhvby03vqh6dx3fhyz7-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal base bytestring chronos co-log-core containers
    contravariant dependent-map dependent-sum directory exceptions
    filepath mtl text transformers unliftio-core vector
  ];
  executableHaskellDepends = [ base bytestring dependent-map mtl ];
  testHaskellDepends = [ base co-log-core doctest Glob hedgehog ];
  homepage = "https://github.com/co-log/co-log";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
}
;
}
;
};
ghc96 = {
};
ghc98 = {
};
hix-build-tools = {
};
hls = {
};
latest = {
  ansi-terminal = {
  meta = {
    sha256 = "1jpim6z8a074h427ah2yqbkm0krcy9yq28276fcdrxm6ji8pa302";
    ver = "1.1.2";
  };
  drv = { mkDerivation, ansi-terminal-types, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal";
  version = "1.1.2";
  src = /nix/store/i6vw5gbg444japsaj6r702xaxbw46jai-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ ansi-terminal-types base colour ];
  homepage = "https://github.com/UnkindPartition/ansi-terminal";
  description = "Simple ANSI terminal support";
  license = lib.licenses.bsd3;
}
;
}
;
  ansi-terminal-types = {
  meta = {
    sha256 = "06q2ygb33a3kv8z0xk75dyc2a32si82yc8126dz97xq03pinym8h";
    ver = "1.1";
  };
  drv = { mkDerivation, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal-types";
  version = "1.1";
  src = /nix/store/kvxk9kvdlq99ar4jrrxs9dnqm3s5kbc9-source;
  libraryHaskellDepends = [ base colour ];
  homepage = "https://github.com/UnkindPartition/ansi-terminal";
  description = "Types and functions used to represent SGR aspects";
  license = lib.licenses.bsd3;
}
;
}
;
  cabal-doctest = {
  meta = {
    sha256 = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
    ver = "1.0.11";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.11";
  src = /nix/store/jq5gnm6hwmylv7wndgd4v11z6hv30y0g-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
  co-log = {
  meta = {
    sha256 = "1q8d7ggwgpgqpkb6k0g967ld2sx8q3ad44iiv3f15rzqk7zwmnnx";
    ver = "0.6.1.2";
  };
  drv = { mkDerivation, ansi-terminal, base, bytestring, chronos
, co-log-core, containers, contravariant, dependent-map
, dependent-sum, directory, doctest, exceptions, filepath, Glob
, hedgehog, lib, mtl, text, transformers, unliftio-core, vector
}:
mkDerivation {
  pname = "co-log";
  version = "0.6.1.2";
  src = /nix/store/dvl21llqs3c9ivhvby03vqh6dx3fhyz7-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal base bytestring chronos co-log-core containers
    contravariant dependent-map dependent-sum directory exceptions
    filepath mtl text transformers unliftio-core vector
  ];
  executableHaskellDepends = [ base bytestring dependent-map mtl ];
  testHaskellDepends = [ base co-log-core doctest Glob hedgehog ];
  homepage = "https://github.com/co-log/co-log";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
}
;
}
;
  co-log-polysemy = {
  meta = {
    sha256 = "1rkzc02qv1nj1af1vjp4a8b16dpr3vc6wlwd03pw9xx23syjb6lq";
    ver = "0.0.1.6";
  };
  drv = { mkDerivation, base, co-log-core, lib, polysemy }:
mkDerivation {
  pname = "co-log-polysemy";
  version = "0.0.1.6";
  src = /nix/store/zc8icbaqg2iqgj5pqizac53x4hyq3n7z-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base co-log-core polysemy ];
  executableHaskellDepends = [ base co-log-core polysemy ];
  homepage = "https://github.com/co-log/co-log-polysemy";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
  mainProgram = "play-colog-poly";
}
;
}
;
  concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
    ver = "1.10.21";
  };
  drv = { mkDerivation, ansi-terminal, async, base, directory, exceptions
, lib, process, stm, terminal-size, text, transformers, unix
}:
mkDerivation {
  pname = "concurrent-output";
  version = "1.10.21";
  src = /nix/store/kwz3gmjbrzcw4iccsx2d0cyn85klblqy-source;
  libraryHaskellDepends = [
    ansi-terminal async base directory exceptions process stm
    terminal-size text transformers unix
  ];
  description = "Ungarble output from several threads or commands";
  license = lib.licenses.bsd2;
}
;
}
;
  hedgehog = {
  meta = {
    sha256 = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
    ver = "1.5";
  };
  drv = { mkDerivation, ansi-terminal, async, barbies, base, bytestring
, concurrent-output, containers, deepseq, directory, erf
, exceptions, lib, lifted-async, mmorph, monad-control, mtl
, pretty-show, primitive, random, resourcet, safe-exceptions, stm
, template-haskell, text, time, transformers, transformers-base
, wl-pprint-annotated
}:
mkDerivation {
  pname = "hedgehog";
  version = "1.5";
  src = /nix/store/asphc2qzd1cykd892r5fnhflbd8cwana-source;
  libraryHaskellDepends = [
    ansi-terminal async barbies base bytestring concurrent-output
    containers deepseq directory erf exceptions lifted-async mmorph
    monad-control mtl pretty-show primitive random resourcet
    safe-exceptions stm template-haskell text time transformers
    transformers-base wl-pprint-annotated
  ];
  testHaskellDepends = [
    base containers mmorph mtl pretty-show text transformers
  ];
  homepage = "https://hedgehog.qa";
  description = "Release with confidence";
  license = lib.licenses.bsd3;
}
;
}
;
  incipit-base = {
  meta = {
    sha256 = "0iyyvxpyyybn5ygr875pav6g5hbs00wa9jbr7qslszqpkfpy5x33";
    ver = "0.6.1.0";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.6.1.0";
  src = /nix/store/2k1isywgqm3pcbzdhwyp97n9250g044k-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  incipit-core = {
  meta = {
    sha256 = "144c239nxl8zi2ik3ycic3901gxn8rccij3g609n2zgnn3b6zilj";
    ver = "0.6.1.0";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.6.1.0";
  src = /nix/store/7bfdjb94bzganyaybhhjmxjcwypnsasp-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  optparse-applicative = {
  meta = {
    sha256 = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
    ver = "0.18.1.0";
  };
  drv = { mkDerivation, base, lib, prettyprinter
, prettyprinter-ansi-terminal, process, QuickCheck, text
, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.18.1.0";
  src = /nix/store/zpydvqgb42zkwjbh3s5jrd3z8df7w8j3-source;
  libraryHaskellDepends = [
    base prettyprinter prettyprinter-ansi-terminal process text
    transformers transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy-conc = {
  meta = {
    sha256 = "1xli6ja9f7qx2k9956lw4h9y5ywdglhgw769afxw9d4w9avclx28";
    ver = "0.14.1.1";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.14.1.1";
  src = /nix/store/j8i858l0kb1zddk8w5g2swga6cfmd2ap-source;
  libraryHaskellDepends = [
    async base incipit-core polysemy polysemy-resume polysemy-time stm
    stm-chans torsor unagi-chan
  ];
  testHaskellDepends = [
    async base hedgehog incipit-core polysemy polysemy-plugin
    polysemy-test polysemy-time tasty tasty-hedgehog time torsor
  ];
  homepage = "https://github.com/tek/polysemy-conc#readme";
  description = "Polysemy effects for concurrency";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-plugin = {
  meta = {
    sha256 = "1c2agk21jj7fwdj6xkagq0prvxknp3zr6q1f480wizssibcvm7y6";
    ver = "0.4.5.3";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.5.3";
  src = /nix/store/vhdv7p7lqiarmgai5l0n44yqgczljkb5-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base containers ghc ghc-tcplugins-extra polysemy syb transformers
  ];
  testHaskellDepends = [
    base containers doctest ghc ghc-tcplugins-extra hspec
    hspec-discover inspection-testing polysemy should-not-typecheck syb
    transformers
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Disambiguate obvious uses of effects";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy-resume = {
  meta = {
    sha256 = "1achlwdkycbgjlcdkq641r481m1bl9rb7fklbwfb9nnb6xmqyzms";
    ver = "0.9.0.0";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.9.0.0";
  src = /nix/store/6iizg7w3a4l1l5w6wf42rn9a2fimh2hd-source;
  libraryHaskellDepends = [
    base incipit-core polysemy transformers
  ];
  testHaskellDepends = [
    base incipit-core polysemy polysemy-plugin polysemy-test stm tasty
  ];
  homepage = "https://github.com/tek/polysemy-resume#readme";
  description = "Polysemy error tracking";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-test = {
  meta = {
    sha256 = "1sp9iag1brknmdy0qvmgnmynwc4gbg1jy21w584x1m2hpqi25p6j";
    ver = "0.10.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.10.0.1";
  src = /nix/store/lxl8vyrvmkpdf7j78dcxapzlzvk9vbwk-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base hedgehog incipit-core path path-io polysemy tasty
    tasty-hedgehog transformers
  ];
  testHaskellDepends = [
    base hedgehog incipit-core path polysemy tasty
  ];
  homepage = "https://github.com/tek/polysemy-test#readme";
  description = "Polysemy effects for testing";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-time = {
  meta = {
    sha256 = "0cw39gvmr9rgh3hc0gd55wimm4lxzw9nyrczixk42nw170bpls40";
    ver = "0.7.0.1";
  };
  drv = { mkDerivation, aeson, base, incipit-core, lib, polysemy-test
, tasty, template-haskell, time, torsor
}:
mkDerivation {
  pname = "polysemy-time";
  version = "0.7.0.1";
  src = /nix/store/akynivsc8xs0v3cf06g7jlcch86xsapw-source;
  libraryHaskellDepends = [
    aeson base incipit-core template-haskell time torsor
  ];
  testHaskellDepends = [
    base incipit-core polysemy-test tasty time
  ];
  homepage = "https://github.com/tek/polysemy-time#readme";
  description = "A Polysemy effect for time";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  prettyprinter-ansi-terminal = {
  meta = {
    sha256 = "09m8knzfvms12576pp2nrdn7j0wikylwjfr9r3z4swgipz1r3nki";
    ver = "1.1.3";
  };
  drv = { mkDerivation, ansi-terminal, base, base-compat, containers
, deepseq, doctest, gauge, lib, prettyprinter, QuickCheck, text
}:
mkDerivation {
  pname = "prettyprinter-ansi-terminal";
  version = "1.1.3";
  src = /nix/store/myazyhlvjsjzmqmlx3bwyy8jg7wzl2qz-source;
  libraryHaskellDepends = [ ansi-terminal base prettyprinter text ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [
    base base-compat containers deepseq gauge prettyprinter QuickCheck
    text
  ];
  homepage = "http://github.com/quchen/prettyprinter";
  description = "ANSI terminal backend for the »prettyprinter« package";
  license = lib.licenses.bsd2;
}
;
}
;
  tasty = {
  meta = {
    sha256 = "1xjlmgsww34asjl9rcwbziw5l4qqbvi5l4b7qvzf4dc7hqkpq1rs";
    ver = "1.5.3";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.3";
  src = /nix/store/9028fgac7afc6vw6is37lvq4p8gqpa7m-source;
  libraryHaskellDepends = [
    ansi-terminal base containers optparse-applicative stm tagged
    transformers unix
  ];
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
}
;
}
;
  tasty-hedgehog = {
  meta = {
    sha256 = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
    ver = "1.4.0.2";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.4.0.2";
  src = /nix/store/b9mxq4fh65sif22q9a4g041jvp847cyc-source;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base hedgehog tasty tasty-expected-failure
  ];
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
}
;
}
;
};
lower = {
  aeson = {
  meta = {
    sha256 = "1f1f6h2r60ghz4p1ddi6wnq6z3i07j60sgm77hx2rvmncz4vizp0";
    ver = "2.1.2.1";
  };
  drv = { mkDerivation, attoparsec, base, base-compat
, base-compat-batteries, base-orphans, base16-bytestring
, bytestring, containers, data-fix, deepseq, Diff, directory, dlist
, exceptions, filepath, generic-deriving, generically, ghc-prim
, hashable, indexed-traversable, integer-logarithms, lib, OneTuple
, primitive, QuickCheck, quickcheck-instances, scientific
, semialign, strict, tagged, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, text, text-short
, th-abstraction, these, time, time-compat, unordered-containers
, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.1.2.1";
  src = /nix/store/hdckfxcpamn3qv2a0xn9pfzz64k0fpvp-source;
  libraryHaskellDepends = [
    attoparsec base base-compat-batteries bytestring containers
    data-fix deepseq dlist exceptions generically ghc-prim hashable
    indexed-traversable OneTuple primitive QuickCheck scientific
    semialign strict tagged template-haskell text text-short
    th-abstraction these time time-compat unordered-containers
    uuid-types vector witherable
  ];
  testHaskellDepends = [
    attoparsec base base-compat base-orphans base16-bytestring
    bytestring containers data-fix Diff directory dlist filepath
    generic-deriving generically ghc-prim hashable indexed-traversable
    integer-logarithms OneTuple primitive QuickCheck
    quickcheck-instances scientific strict tagged tasty tasty-golden
    tasty-hunit tasty-quickcheck template-haskell text text-short these
    time time-compat unordered-containers uuid-types vector
  ];
  homepage = "https://github.com/haskell/aeson";
  description = "Fast JSON parsing and encoding";
  license = lib.licenses.bsd3;
}
;
}
;
  ansi-terminal = {
  meta = {
    sha256 = "0fzywk11lkwqlf6v6qc845i6qjj3hqb3y5hdnk2fbpq7fdx5svvy";
    ver = "1.0";
  };
  drv = { mkDerivation, ansi-terminal-types, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal";
  version = "1.0";
  src = /nix/store/cbyxb9rbsdcwgvj3f58grn766xf9ky47-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ ansi-terminal-types base colour ];
  homepage = "https://github.com/UnkindPartition/ansi-terminal";
  description = "Simple ANSI terminal support";
  license = lib.licenses.bsd3;
}
;
}
;
  async = {
  meta = {
    sha256 = "0wjyyqvlvvq75ywpr86myib34z29k7i32rnwcqpwfi0d3p7nx055";
    ver = "2.2.4";
  };
  drv = { mkDerivation, base, hashable, HUnit, lib, stm, test-framework
, test-framework-hunit
}:
mkDerivation {
  pname = "async";
  version = "2.2.4";
  src = /nix/store/bg80wyzvnik8dc41g52g5sy83w2qnya8-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base hashable stm ];
  testHaskellDepends = [
    base HUnit stm test-framework test-framework-hunit
  ];
  homepage = "https://github.com/simonmar/async";
  description = "Run IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
  bifunctors = {
  meta = {
    sha256 = "1g0z6q5z04zgp7kaf917nrj2iiz1lsqh8ji5ny5ly534zr9zya2m";
    ver = "5.6.2";
  };
  drv = { mkDerivation, assoc, base, comonad, containers
, foldable1-classes-compat, hspec, hspec-discover, lib, QuickCheck
, tagged, template-haskell, th-abstraction, transformers
, transformers-compat
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.2";
  src = /nix/store/a4rjc37gkzldsfvpg42wsldlhpmxnbzi-source;
  libraryHaskellDepends = [
    assoc base comonad containers foldable1-classes-compat tagged
    template-haskell th-abstraction transformers
  ];
  testHaskellDepends = [
    base hspec QuickCheck template-haskell transformers
    transformers-compat
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
  bytebuild = {
  meta = {
    sha256 = "1qka0dr6g534vi8p3iwlshdi1iklhgaajg9fbbzvkg49pzj1sak7";
    ver = "0.3.16.3";
  };
  drv = { mkDerivation, base, byteslice, bytestring, gauge
, haskell-src-meta, integer-logarithms, lib, natural-arithmetic
, primitive, primitive-offset, QuickCheck, quickcheck-instances
, run-st, tasty, tasty-hunit, tasty-quickcheck, template-haskell
, text, text-short, wide-word, zigzag
}:
mkDerivation {
  pname = "bytebuild";
  version = "0.3.16.3";
  src = /nix/store/56wgwapi2ba21jgzfkxd77k399z3nmpr-source;
  libraryHaskellDepends = [
    base byteslice bytestring haskell-src-meta integer-logarithms
    natural-arithmetic primitive primitive-offset run-st
    template-haskell text text-short wide-word zigzag
  ];
  testHaskellDepends = [
    base byteslice bytestring natural-arithmetic primitive QuickCheck
    quickcheck-instances tasty tasty-hunit tasty-quickcheck text
    text-short wide-word
  ];
  benchmarkHaskellDepends = [
    base byteslice gauge natural-arithmetic primitive text-short
  ];
  homepage = "https://github.com/byteverse/bytebuild";
  description = "Build byte arrays";
  license = lib.licenses.bsd3;
}
;
}
;
  cabal-doctest = {
  meta = {
    sha256 = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
    ver = "1.0.11";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.11";
  src = /nix/store/jq5gnm6hwmylv7wndgd4v11z6hv30y0g-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
  chronos = {
  meta = {
    sha256 = "1pbfp25py682d17visa4i9rjxmiim8aykrgs7nv2q9anajv88kdx";
    ver = "1.1.6.2";
  };
  drv = { mkDerivation, aeson, attoparsec, base, bytebuild, byteslice
, bytesmith, bytestring, criterion, deepseq, hashable, HUnit, lib
, natural-arithmetic, old-locale, primitive, QuickCheck
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, text-short, thyme, time, torsor, vector
}:
mkDerivation {
  pname = "chronos";
  version = "1.1.6.2";
  src = /nix/store/4lqja84257d3yzxlf1vsz8687hydv3aj-source;
  libraryHaskellDepends = [
    aeson attoparsec base bytebuild byteslice bytesmith bytestring
    deepseq hashable natural-arithmetic primitive text text-short
    torsor vector
  ];
  testHaskellDepends = [
    aeson attoparsec base bytestring HUnit QuickCheck test-framework
    test-framework-hunit test-framework-quickcheck2 text torsor
  ];
  benchmarkHaskellDepends = [
    attoparsec base bytestring criterion deepseq old-locale QuickCheck
    text text-short thyme time
  ];
  homepage = "https://github.com/byteverse/chronos";
  description = "A high-performance time library";
  license = lib.licenses.bsd3;
}
;
}
;
  clock = {
  meta = {
    sha256 = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
    ver = "0.8.4";
  };
  drv = { mkDerivation, base, criterion, lib, tasty, tasty-quickcheck }:
mkDerivation {
  pname = "clock";
  version = "0.8.4";
  src = /nix/store/rbsi64yfx248l6pmqqvfviaj5alfpfhw-source;
  libraryHaskellDepends = [ base ];
  testHaskellDepends = [ base tasty tasty-quickcheck ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/corsis/clock";
  description = "High-resolution clock functions: monotonic, realtime, cputime";
  license = lib.licenses.bsd3;
}
;
}
;
  co-log = {
  meta = {
    sha256 = "0q1ivyv7v0rxvvfgawqj4xs4sw4ip9bk6hwvk5h9gjhhh6z9mmjl";
    ver = "0.6.0.0";
  };
  drv = { mkDerivation, ansi-terminal, base, bytestring, chronos
, co-log-core, containers, contravariant, dependent-map
, dependent-sum, directory, doctest, exceptions, filepath, Glob
, hedgehog, lib, markdown-unlit, mtl, text, transformers
, unliftio-core, vector
}:
mkDerivation {
  pname = "co-log";
  version = "0.6.0.0";
  src = /nix/store/hhwvpwd85d9l9f498c8jvrlgzwhg0cyp-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal base bytestring chronos co-log-core containers
    contravariant dependent-map dependent-sum directory exceptions
    filepath mtl text transformers unliftio-core vector
  ];
  executableHaskellDepends = [
    base bytestring co-log-core dependent-map mtl text
  ];
  executableToolDepends = [ markdown-unlit ];
  testHaskellDepends = [ base co-log-core doctest Glob hedgehog ];
  homepage = "https://github.com/co-log/co-log";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
}
;
}
;
  co-log-polysemy = {
  meta = {
    sha256 = "19p8igm32p030nlpan4pi4yab7w7wzzyqc12pvgysfl4jpi5v60h";
    ver = "0.0.1.3";
  };
  drv = { mkDerivation, base, co-log-core, lib, polysemy }:
mkDerivation {
  pname = "co-log-polysemy";
  version = "0.0.1.3";
  src = /nix/store/p5c9hcd53ga095jihay2iv0abrxzrg6g-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base co-log-core polysemy ];
  executableHaskellDepends = [ base co-log-core polysemy ];
  homepage = "https://github.com/co-log/co-log-polysemy";
  description = "Composable Contravariant Comonadic Logging Library";
  license = lib.licenses.mpl20;
  mainProgram = "play-colog-poly";
}
;
}
;
  concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
    ver = "1.10.21";
  };
  drv = { mkDerivation, ansi-terminal, async, base, directory, exceptions
, lib, process, stm, terminal-size, text, transformers, unix
}:
mkDerivation {
  pname = "concurrent-output";
  version = "1.10.21";
  src = /nix/store/kwz3gmjbrzcw4iccsx2d0cyn85klblqy-source;
  libraryHaskellDepends = [
    ansi-terminal async base directory exceptions process stm
    terminal-size text transformers unix
  ];
  description = "Ungarble output from several threads or commands";
  license = lib.licenses.bsd2;
}
;
}
;
  di-polysemy = {
  meta = {
    sha256 = "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
    ver = "0.2.0.0";
  };
  drv = { mkDerivation, base, df1, di-core, di-df1, di-handle, lib
, polysemy
}:
mkDerivation {
  pname = "di-polysemy";
  version = "0.2.0.0";
  src = /nix/store/mllni9x0g2ans6s1jxz7lb07x40nzd1p-source;
  libraryHaskellDepends = [
    base df1 di-core di-df1 di-handle polysemy
  ];
  homepage = "https://github.com/nitros12/di-polysemy";
  description = "DI logger wrapped for Polysemy";
  license = lib.licenses.mit;
}
;
}
;
  haskell-src-meta = {
  meta = {
    sha256 = "0ccwgfkb1n31wwfysdhc1mqpcnnxnczwmz3d4avm9yn9a5m1nh4s";
    ver = "0.8.15";
  };
  drv = { mkDerivation, base, containers, haskell-src-exts, HUnit, lib
, pretty, syb, tasty, tasty-hunit, template-haskell, th-orphans
}:
mkDerivation {
  pname = "haskell-src-meta";
  version = "0.8.15";
  src = /nix/store/dyyv8rkb3sljsrhczf0fq9y9vc31k028-source;
  libraryHaskellDepends = [
    base haskell-src-exts pretty syb template-haskell th-orphans
  ];
  testHaskellDepends = [
    base containers haskell-src-exts HUnit pretty syb tasty tasty-hunit
    template-haskell
  ];
  description = "Parse source to template-haskell abstract syntax";
  license = lib.licenses.bsd3;
}
;
}
;
  hedgehog = {
  meta = {
    sha256 = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
    ver = "1.5";
  };
  drv = { mkDerivation, ansi-terminal, async, barbies, base, bytestring
, concurrent-output, containers, deepseq, directory, erf
, exceptions, lib, lifted-async, mmorph, monad-control, mtl
, pretty-show, primitive, random, resourcet, safe-exceptions, stm
, template-haskell, text, time, transformers, transformers-base
, wl-pprint-annotated
}:
mkDerivation {
  pname = "hedgehog";
  version = "1.5";
  src = /nix/store/asphc2qzd1cykd892r5fnhflbd8cwana-source;
  libraryHaskellDepends = [
    ansi-terminal async barbies base bytestring concurrent-output
    containers deepseq directory erf exceptions lifted-async mmorph
    monad-control mtl pretty-show primitive random resourcet
    safe-exceptions stm template-haskell text time transformers
    transformers-base wl-pprint-annotated
  ];
  testHaskellDepends = [
    base containers mmorph mtl pretty-show text transformers
  ];
  homepage = "https://hedgehog.qa";
  description = "Release with confidence";
  license = lib.licenses.bsd3;
}
;
}
;
  incipit-base = {
  meta = {
    sha256 = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
    ver = "0.4.1.0";
  };
  drv = { mkDerivation, base, bytestring, containers, data-default, lib
, stm, text
}:
mkDerivation {
  pname = "incipit-base";
  version = "0.4.1.0";
  src = /nix/store/9zk69qkk9paqair15m9b1sc2bbb9220a-source;
  libraryHaskellDepends = [
    base bytestring containers data-default stm text
  ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy – Base Reexports";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  incipit-core = {
  meta = {
    sha256 = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
    ver = "0.4.1.0";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.4.1.0";
  src = /nix/store/cyi2s97p8jcj6mr8ci7mvbfwpfnzii0i-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  lifted-async = {
  meta = {
    sha256 = "0cgzs8sfr3l7ah5nnscpp50v5mmvc4hqf02zdi4h344dbbha10fy";
    ver = "0.10.2.7";
  };
  drv = { mkDerivation, async, base, constraints, deepseq, HUnit, lib
, lifted-base, monad-control, mtl, tasty, tasty-bench
, tasty-expected-failure, tasty-hunit, tasty-th, transformers-base
}:
mkDerivation {
  pname = "lifted-async";
  version = "0.10.2.7";
  src = /nix/store/7fr6j14aj5sb57yg621rc9vysc7d1qcz-source;
  libraryHaskellDepends = [
    async base constraints lifted-base monad-control transformers-base
  ];
  testHaskellDepends = [
    async base HUnit lifted-base monad-control mtl tasty
    tasty-expected-failure tasty-hunit tasty-th
  ];
  benchmarkHaskellDepends = [ async base deepseq tasty-bench ];
  homepage = "https://github.com/maoe/lifted-async";
  description = "Run lifted IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
  markdown-unlit = {
  meta = {
    sha256 = "1azz5kcgk2qi1z17q6iqbcd3fdwamwgllig1c20s4z5lzqwydhbp";
    ver = "0.6.0";
  };
  drv = { mkDerivation, base, base-compat, directory, hspec, hspec-discover
, lib, QuickCheck, silently, stringbuilder, temporary
}:
mkDerivation {
  pname = "markdown-unlit";
  version = "0.6.0";
  src = /nix/store/n8acri25mc5vp44xyrwy9w1lsvk6vl8a-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base base-compat ];
  executableHaskellDepends = [ base base-compat ];
  testHaskellDepends = [
    base base-compat directory hspec QuickCheck silently stringbuilder
    temporary
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/sol/markdown-unlit#readme";
  description = "Literate Haskell support for Markdown";
  license = lib.licenses.mit;
  mainProgram = "markdown-unlit";
}
;
}
;
  optparse-applicative = {
  meta = {
    sha256 = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
    ver = "0.18.1.0";
  };
  drv = { mkDerivation, base, lib, prettyprinter
, prettyprinter-ansi-terminal, process, QuickCheck, text
, transformers, transformers-compat
}:
mkDerivation {
  pname = "optparse-applicative";
  version = "0.18.1.0";
  src = /nix/store/zpydvqgb42zkwjbh3s5jrd3z8df7w8j3-source;
  libraryHaskellDepends = [
    base prettyprinter prettyprinter-ansi-terminal process text
    transformers transformers-compat
  ];
  testHaskellDepends = [ base QuickCheck ];
  homepage = "https://github.com/pcapriotti/optparse-applicative";
  description = "Utilities and combinators for parsing command line options";
  license = lib.licenses.bsd3;
}
;
}
;
  path = {
  meta = {
    sha256 = "05b84rizmrii847pq2fbvlpna796bwxha1vc01c3vxb2rhrknrf7";
    ver = "0.9.5";
  };
  drv = { mkDerivation, aeson, base, bytestring, deepseq, exceptions
, filepath, genvalidity, genvalidity-hspec, genvalidity-property
, hashable, hspec, lib, mtl, QuickCheck, template-haskell, text
, validity
}:
mkDerivation {
  pname = "path";
  version = "0.9.5";
  src = /nix/store/h806s0ygy5xlzxcrkndaddnz3md6pn6m-source;
  libraryHaskellDepends = [
    aeson base deepseq exceptions filepath hashable template-haskell
    text
  ];
  testHaskellDepends = [
    aeson base bytestring filepath genvalidity genvalidity-hspec
    genvalidity-property hspec mtl QuickCheck template-haskell validity
  ];
  description = "Support for well-typed paths";
  license = lib.licenses.bsd3;
}
;
}
;
  path-io = {
  meta = {
    sha256 = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
    ver = "1.8.2";
  };
  drv = { mkDerivation, base, containers, directory, dlist, exceptions
, filepath, hspec, lib, path, temporary, time, transformers
, unix-compat
}:
mkDerivation {
  pname = "path-io";
  version = "1.8.2";
  src = /nix/store/y2n6qszdsqdfhhbw4fl146qzyj1sa7zb-source;
  libraryHaskellDepends = [
    base containers directory dlist exceptions filepath path temporary
    time transformers unix-compat
  ];
  testHaskellDepends = [ base exceptions hspec path unix-compat ];
  homepage = "https://github.com/mrkkrp/path-io";
  description = "Interface to ‘directory’ package for users of ‘path’";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy = {
  meta = {
    sha256 = "14iah95ikydvqgjl9ybx2m0l9b92fb6clp2x3f777jgckjdkf3g5";
    ver = "1.7.0.0";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, criterion, doctest, first-class-families, free, freer-simple
, hspec, hspec-discover, inspection-testing, lib, mtl, QuickCheck
, stm, syb, template-haskell, th-abstraction, transformers
, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.7.0.0";
  src = /nix/store/gbczpq7wbxw0b6aqa6axwvl883f5n1j0-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base containers first-class-families mtl QuickCheck stm syb
    template-haskell th-abstraction transformers type-errors unagi-chan
  ];
  testHaskellDepends = [
    async base containers doctest first-class-families hspec
    inspection-testing mtl QuickCheck stm syb template-haskell
    th-abstraction transformers type-errors unagi-chan
  ];
  testToolDepends = [ hspec-discover ];
  benchmarkHaskellDepends = [
    async base containers criterion first-class-families free
    freer-simple mtl QuickCheck stm syb template-haskell th-abstraction
    transformers type-errors unagi-chan
  ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Higher-order, low-boilerplate free monads";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy-conc = {
  meta = {
    sha256 = "12w102jpdyrfjqz10bg8k0dyczvvii3x1v02vqd8is26qbfm20q0";
    ver = "0.11.1.0";
  };
  drv = { mkDerivation, async, base, containers, hedgehog, incipit-core
, lib, polysemy, polysemy-plugin, polysemy-resume, polysemy-test
, polysemy-time, stm, stm-chans, tasty, tasty-hedgehog, time
, torsor, unagi-chan, unix
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.11.1.0";
  src = /nix/store/sjrm830lqxpsg3h5cb5rw6dl5zpfb5pl-source;
  libraryHaskellDepends = [
    async base containers incipit-core polysemy polysemy-resume
    polysemy-time stm stm-chans torsor unagi-chan unix
  ];
  testHaskellDepends = [
    async base hedgehog incipit-core polysemy polysemy-plugin
    polysemy-resume polysemy-test polysemy-time stm tasty
    tasty-hedgehog time unix
  ];
  homepage = "https://github.com/tek/polysemy-conc#readme";
  description = "Polysemy effects for concurrency";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-plugin = {
  meta = {
    sha256 = "08ry72bw78fis9iallzw6wsrzxnlmayq2k2yy0j79hpw4sp8knmg";
    ver = "0.4.4.0";
  };
  drv = { mkDerivation, base, Cabal, cabal-doctest, containers, doctest
, ghc, ghc-tcplugins-extra, hspec, hspec-discover
, inspection-testing, lib, polysemy, should-not-typecheck, syb
, transformers
}:
mkDerivation {
  pname = "polysemy-plugin";
  version = "0.4.4.0";
  src = /nix/store/2acqm2mdb64ry7hrnkhs5ff6g2yxvvkb-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    base containers ghc ghc-tcplugins-extra polysemy syb transformers
  ];
  testHaskellDepends = [
    base containers doctest ghc ghc-tcplugins-extra hspec
    hspec-discover inspection-testing polysemy should-not-typecheck syb
    transformers
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Disambiguate obvious uses of effects";
  license = lib.licenses.bsd3;
}
;
}
;
  polysemy-resume = {
  meta = {
    sha256 = "1yavr2h31ffxj861vscm2hddrwi977ddx0sn0hh47zn78pqafz77";
    ver = "0.5.0.0";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-test, stm, tasty, tasty-hedgehog, text
, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.5.0.0";
  src = /nix/store/dwf1hw9hfvcj71g0gjk0pr9v6kd3n8gw-source;
  libraryHaskellDepends = [
    base incipit-core polysemy transformers
  ];
  testHaskellDepends = [
    base hedgehog incipit-core polysemy polysemy-plugin polysemy-test
    stm tasty tasty-hedgehog text
  ];
  homepage = "https://github.com/tek/polysemy-resume#readme";
  description = "Polysemy error tracking";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-test = {
  meta = {
    sha256 = "07pi549ral22sxhja67k5b9v787q0b32ysp0bq9szhwjqgxsab46";
    ver = "0.6.0.0";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.6.0.0";
  src = /nix/store/s78pw7b8wcpkffrpad4p6axjmg2aaxaz-source;
  enableSeparateDataOutput = true;
  libraryHaskellDepends = [
    base hedgehog incipit-core path path-io polysemy tasty
    tasty-hedgehog transformers
  ];
  testHaskellDepends = [
    base hedgehog incipit-core path polysemy tasty
  ];
  homepage = "https://github.com/tek/polysemy-test#readme";
  description = "Polysemy Effects for Testing";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  polysemy-time = {
  meta = {
    sha256 = "1ay0ym01wznk98km2ksw8slj52gc7rav6n16z4sndzsw7cdwdq2y";
    ver = "0.6.0.0";
  };
  drv = { mkDerivation, aeson, base, incipit-core, lib, polysemy-test
, tasty, template-haskell, time, torsor
}:
mkDerivation {
  pname = "polysemy-time";
  version = "0.6.0.0";
  src = /nix/store/cpli49vw3sc8vdh8vc747jvidvaag1d4-source;
  libraryHaskellDepends = [
    aeson base incipit-core template-haskell time torsor
  ];
  testHaskellDepends = [
    base incipit-core polysemy-test tasty time
  ];
  homepage = "https://github.com/tek/polysemy-time#readme";
  description = "Polysemy effects for time";
  license = "BSD-2-Clause-Patent";
}
;
}
;
  prettyprinter-ansi-terminal = {
  meta = {
    sha256 = "09m8knzfvms12576pp2nrdn7j0wikylwjfr9r3z4swgipz1r3nki";
    ver = "1.1.3";
  };
  drv = { mkDerivation, ansi-terminal, base, base-compat, containers
, deepseq, doctest, gauge, lib, prettyprinter, QuickCheck, text
}:
mkDerivation {
  pname = "prettyprinter-ansi-terminal";
  version = "1.1.3";
  src = /nix/store/myazyhlvjsjzmqmlx3bwyy8jg7wzl2qz-source;
  libraryHaskellDepends = [ ansi-terminal base prettyprinter text ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [
    base base-compat containers deepseq gauge prettyprinter QuickCheck
    text
  ];
  homepage = "http://github.com/quchen/prettyprinter";
  description = "ANSI terminal backend for the »prettyprinter« package";
  license = lib.licenses.bsd2;
}
;
}
;
  semialign = {
  meta = {
    sha256 = "05h1ab484ghd2wzx4pdlsfwiy6rayy0lzwk9yda9il7fjwi9sj7n";
    ver = "1.3.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1";
  src = /nix/store/9s434gyr8vwcwm44822v5zzrn2wznq7l-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    transformers unordered-containers vector
  ];
  homepage = "https://github.com/haskellari/these";
  description = "Align and Zip type-classes from the common Semialign ancestor";
  license = lib.licenses.bsd3;
}
;
}
;
  semigroupoids = {
  meta = {
    sha256 = "10qd2y5f5m7jzrha1wfbwwybhhghdwkdmk9ajybdz8h88cz9ig2g";
    ver = "6.0.1";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, distributive, foldable1-classes-compat, hashable
, lib, tagged, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.1";
  src = /nix/store/gxn0kl2l6iyvffws48hbkcdsiw77nlfq-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    distributive foldable1-classes-compat hashable tagged
    template-haskell transformers transformers-compat
    unordered-containers
  ];
  homepage = "http://github.com/ekmett/semigroupoids";
  description = "Semigroupoids: Category sans id";
  license = lib.licenses.bsd2;
}
;
}
;
  tasty = {
  meta = {
    sha256 = "0jdr0r9x1apxfma0p5rvyai7sd9wsg22hblzcrxmw7lq34j1606f";
    ver = "1.4.2";
  };
  drv = { mkDerivation, ansi-terminal, base, clock, containers, lib, mtl
, optparse-applicative, stm, tagged, unbounded-delays, unix
, wcwidth
}:
mkDerivation {
  pname = "tasty";
  version = "1.4.2";
  src = /nix/store/40r5abgjm3rrhq28ji8qldmnpaq9idda-source;
  libraryHaskellDepends = [
    ansi-terminal base clock containers mtl optparse-applicative stm
    tagged unbounded-delays unix wcwidth
  ];
  homepage = "https://github.com/UnkindPartition/tasty";
  description = "Modern and extensible testing framework";
  license = lib.licenses.mit;
}
;
}
;
  tasty-hedgehog = {
  meta = {
    sha256 = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
    ver = "1.4.0.2";
  };
  drv = { mkDerivation, base, hedgehog, lib, tagged, tasty
, tasty-expected-failure
}:
mkDerivation {
  pname = "tasty-hedgehog";
  version = "1.4.0.2";
  src = /nix/store/b9mxq4fh65sif22q9a4g041jvp847cyc-source;
  libraryHaskellDepends = [ base hedgehog tagged tasty ];
  testHaskellDepends = [
    base hedgehog tasty tasty-expected-failure
  ];
  homepage = "https://github.com/qfpl/tasty-hedgehog";
  description = "Integration for tasty and hedgehog";
  license = lib.licenses.bsd3;
}
;
}
;
  th-abstraction = {
  meta = {
    sha256 = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
    ver = "0.4.5.0";
  };
  drv = { mkDerivation, base, containers, ghc-prim, lib, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.4.5.0";
  src = /nix/store/60fdh9cnrz0zzin9ali21npxs10n3f51-source;
  libraryHaskellDepends = [
    base containers ghc-prim template-haskell
  ];
  testHaskellDepends = [ base containers template-haskell ];
  homepage = "https://github.com/glguy/th-abstraction";
  description = "Nicer interface for reified information about data types";
  license = lib.licenses.isc;
}
;
}
;
  th-expand-syns = {
  meta = {
    sha256 = "05p82h3hb7ayidc98qq2bgj790d7km9ixp5ijgc1qqkksg3php6z";
    ver = "0.4.12.0";
  };
  drv = { mkDerivation, base, containers, lib, syb, template-haskell
, th-abstraction
}:
mkDerivation {
  pname = "th-expand-syns";
  version = "0.4.12.0";
  src = /nix/store/qcphnmgqdg2c9z357mqf4p37klisqhb2-source;
  libraryHaskellDepends = [
    base containers syb template-haskell th-abstraction
  ];
  testHaskellDepends = [ base template-haskell th-abstraction ];
  homepage = "https://github.com/DanielSchuessler/th-expand-syns";
  description = "Expands type synonyms in Template Haskell ASTs";
  license = lib.licenses.bsd3;
}
;
}
;
  th-lift = {
  meta = {
    sha256 = "0rp32lkvx22alxc7c1mxgf224jyanfy93ry70zwdn6zzj50mnbhc";
    ver = "0.8.4";
  };
  drv = { mkDerivation, base, ghc-prim, lib, template-haskell
, th-abstraction
}:
mkDerivation {
  pname = "th-lift";
  version = "0.8.4";
  src = /nix/store/ywmlr7kmk4b49ph3kqcrg562xx2nvv5v-source;
  libraryHaskellDepends = [
    base ghc-prim template-haskell th-abstraction
  ];
  testHaskellDepends = [ base ghc-prim template-haskell ];
  homepage = "http://github.com/RyanGlScott/th-lift";
  description = "Derive Template Haskell's Lift class for datatypes";
  license = lib.licenses.bsd3;
}
;
}
;
  th-orphans = {
  meta = {
    sha256 = "1ih88wwgrxmj04awk0693pjhi19grhh33c6ckc0gckvkisp5lyb5";
    ver = "0.13.16";
  };
  drv = { mkDerivation, base, bytestring, ghc-prim, hspec, hspec-discover
, lib, mtl, template-haskell, th-compat, th-lift, th-reify-many
}:
mkDerivation {
  pname = "th-orphans";
  version = "0.13.16";
  src = /nix/store/5k4lbdcd95avcmr84yrsl7cw6b8mdgba-source;
  libraryHaskellDepends = [
    base mtl template-haskell th-compat th-lift th-reify-many
  ];
  testHaskellDepends = [
    base bytestring ghc-prim hspec template-haskell th-lift
  ];
  testToolDepends = [ hspec-discover ];
  description = "Orphan instances for TH datatypes";
  license = lib.licenses.bsd3;
}
;
}
;
  th-reify-many = {
  meta = {
    sha256 = "0g9axz1iszl02cxvy2zgmzinjvz8pbsfq3lzhspshlw5bgcsld39";
    ver = "0.1.10";
  };
  drv = { mkDerivation, base, containers, lib, mtl, safe, template-haskell
, th-expand-syns
}:
mkDerivation {
  pname = "th-reify-many";
  version = "0.1.10";
  src = /nix/store/6bhcg78ijqxmxy60xnvxmm5k2gvkhqj7-source;
  libraryHaskellDepends = [
    base containers mtl safe template-haskell th-expand-syns
  ];
  testHaskellDepends = [ base template-haskell ];
  homepage = "http://github.com/mgsloan/th-reify-many";
  description = "Recurseively reify template haskell datatype info";
  license = lib.licenses.bsd3;
}
;
}
;
  type-errors = {
  meta = {
    sha256 = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
    ver = "0.2.0.2";
  };
  drv = { mkDerivation, base, doctest, first-class-families, lib, syb
, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "type-errors";
  version = "0.2.0.2";
  src = /nix/store/kiz1m5rj1riyf995rgipyr4g9g8xlnni-source;
  libraryHaskellDepends = [
    base first-class-families syb template-haskell th-abstraction
  ];
  testHaskellDepends = [
    base doctest first-class-families syb template-haskell
    th-abstraction
  ];
  homepage = "https://github.com/isovector/type-errors#readme";
  description = "Tools for writing better type errors";
  license = lib.licenses.bsd3;
}
;
}
;
  unbounded-delays = {
  meta = {
    sha256 = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
    ver = "0.1.1.1";
  };
  drv = { mkDerivation, base, lib }:
mkDerivation {
  pname = "unbounded-delays";
  version = "0.1.1.1";
  src = /nix/store/hp6mlfj9kg8r7l4gjcak2i7zbxwjzl4s-source;
  libraryHaskellDepends = [ base ];
  homepage = "https://github.com/basvandijk/unbounded-delays";
  description = "Unbounded thread delays and timeouts";
  license = lib.licenses.bsd3;
}
;
}
;
  wcwidth = {
  meta = {
    sha256 = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
    ver = "0.0.2";
  };
  drv = { mkDerivation, base, containers, lib }:
mkDerivation {
  pname = "wcwidth";
  version = "0.0.2";
  src = /nix/store/n4f5lcschfan070bj3i6fa8pwjx1p94s-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base containers ];
  homepage = "http://github.com/solidsnack/wcwidth/";
  description = "Native wcwidth";
  license = lib.licenses.bsd3;
}
;
}
;
};
min = {
};
profiled = {
};
}