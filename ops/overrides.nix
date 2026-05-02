{
  latest-polysemy-log = {
    aeson = {
  meta = {
    sha256 = "1hf13pxldfyv49c4518s44zfspg6r54wylimca7kp59lhh5w099j";
    url = "https://hackage.haskell.org";
    ver = "2.2.4.1";
  };
  drv = { mkDerivation, base, base-compat, base-orphans, base16-bytestring
, bytestring, character-ps, containers, data-fix, deepseq, Diff
, directory, dlist, exceptions, filepath, generic-deriving
, generically, hashable, indexed-traversable, integer-conversion
, integer-logarithms, lib, network-uri, OneTuple, primitive
, QuickCheck, quickcheck-instances, scientific, semialign, strict
, tagged, tasty, tasty-golden, tasty-hunit, tasty-quickcheck
, template-haskell, text, text-iso8601, text-short, th-abstraction
, these, time, time-compat, unordered-containers, uuid-types
, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.2.4.1";
  src = /nix/store/nqg2r8cak468751py2zaz1ck629jcpfz-source;
  libraryHaskellDepends = [
    base bytestring character-ps containers data-fix deepseq dlist
    exceptions hashable indexed-traversable integer-conversion
    integer-logarithms network-uri OneTuple primitive QuickCheck
    scientific semialign strict tagged template-haskell text
    text-iso8601 text-short th-abstraction these time time-compat
    unordered-containers uuid-types vector witherable
  ];
  testHaskellDepends = [
    base base-compat base-orphans base16-bytestring bytestring
    containers data-fix Diff directory dlist filepath generic-deriving
    generically hashable indexed-traversable integer-logarithms
    network-uri OneTuple QuickCheck quickcheck-instances scientific
    strict tagged tasty tasty-golden tasty-hunit tasty-quickcheck text
    text-short these time time-compat unordered-containers uuid-types
    vector
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
    sha256 = "0km29930kkfc4958a9if4pz3ylqfw1l4055pnm6lvrskk3w4my58";
    url = "https://hackage.haskell.org";
    ver = "1.1.5";
  };
  drv = { mkDerivation, ansi-terminal-types, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal";
  version = "1.1.5";
  src = /nix/store/llp43fhsfv6ncglpwl10rnp7h8dxc2dw-source;
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
    sha256 = "1731pcifiskq6g1b72p34phx85l65ax7mbjw11310b3zwzk0ldyn";
    url = "https://hackage.haskell.org";
    ver = "2.2.6";
  };
  drv = { mkDerivation, base, hashable, HUnit, lib, stm, test-framework
, test-framework-hunit, unordered-containers
}:
mkDerivation {
  pname = "async";
  version = "2.2.6";
  src = /nix/store/gqjb7z6xhgknsx70z3vqfndrrb5s0igk-source;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base hashable stm unordered-containers ];
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
    cabal-doctest = {
  meta = {
    sha256 = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
    url = "https://hackage.haskell.org";
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
    concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
    url = "https://hackage.haskell.org";
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
    url = "https://hackage.haskell.org";
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
    incipit-core = {
  meta = {
    sha256 = "1bnaqzdc1vs9vcdlbaljdwv586syam3ahppqq9lwmg2jcvqp2zqr";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.7.0.1";
  src = /nix/store/fphdspn1hwi7ygddkdy3m6qdvc2vlkx6-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    indexed-traversable-instances = {
  meta = {
    sha256 = "1issj9yfpxnshm6k7xq3wmmgrhn87cb0jalp0d1ls3zqx0qjrr03";
    url = "https://hackage.haskell.org";
    ver = "0.1.2.1";
  };
  drv = { mkDerivation, base, containers, indexed-traversable, lib
, OneTuple, QuickCheck, quickcheck-instances, tagged, tasty
, tasty-quickcheck, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.2.1";
  src = /nix/store/4fg6lbfn2wpy1lfqwyvhm70r92n5k437-source;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck unordered-containers
    vector
  ];
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    lifted-async = {
  meta = {
    sha256 = "0c0njy8k70swqnp16wyrrkd1bxjsf3pxi34hxka1y1ifp3haccap";
    url = "https://hackage.haskell.org";
    ver = "0.11.0";
  };
  drv = { mkDerivation, async, base, constraints, lib, lifted-base
, monad-control, mtl, tasty, tasty-bench, tasty-expected-failure
, tasty-hunit, tasty-th, transformers-base
}:
mkDerivation {
  pname = "lifted-async";
  version = "0.11.0";
  src = /nix/store/ygfc0qbnk7zcjk3fd6i8q4kd6wb9cc6y-source;
  libraryHaskellDepends = [
    async base constraints lifted-base monad-control transformers-base
  ];
  testHaskellDepends = [
    base lifted-base mtl tasty tasty-expected-failure tasty-hunit
    tasty-th
  ];
  benchmarkHaskellDepends = [ async base tasty-bench ];
  homepage = "https://github.com/maoe/lifted-async";
  description = "Run lifted IO operations asynchronously and wait for their results";
  license = lib.licenses.bsd3;
}
;
}
;
    optparse-applicative = {
  meta = {
    sha256 = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
    url = "https://hackage.haskell.org";
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
    sha256 = "16hgrkvd27c9vp5447d1dv3b3fi0fv0jfig10h2j37mzk4850wg8";
    url = "https://hackage.haskell.org";
    ver = "0.9.6";
  };
  drv = { mkDerivation, aeson, base, bytestring, deepseq, exceptions
, filepath, genvalidity, genvalidity-hspec, hashable, hspec, lib
, QuickCheck, template-haskell, text, validity-bytestring
}:
mkDerivation {
  pname = "path";
  version = "0.9.6";
  src = /nix/store/17x0d7bdy3wg6nq9zw20ndi417gy13ck-source;
  libraryHaskellDepends = [
    aeson base deepseq exceptions filepath hashable template-haskell
    text
  ];
  testHaskellDepends = [
    aeson base bytestring exceptions filepath genvalidity
    genvalidity-hspec hspec QuickCheck template-haskell
    validity-bytestring
  ];
  doHaddock = false;
  description = "Support for well-typed paths";
  license = lib.licenses.bsd3;
}
;
}
;
    path-io = {
  meta = {
    sha256 = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
    url = "https://hackage.haskell.org";
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
    sha256 = "00dq1ffsd9bld5zag4l2qssbmm4yb234cirsn5f19fmx43cdgngl";
    url = "https://hackage.haskell.org";
    ver = "1.9.2.0";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.2.0";
  src = /nix/store/rrd35xyn2gzkvqid5k43dsqw5z0yb21d-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base containers first-class-families mtl stm syb
    template-haskell th-abstraction transformers type-errors unagi-chan
  ];
  testHaskellDepends = [
    async base containers doctest first-class-families hspec
    hspec-discover inspection-testing mtl stm syb template-haskell
    th-abstraction transformers type-errors unagi-chan
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Higher-order, low-boilerplate free monads";
  license = lib.licenses.bsd3;
}
;
}
;
    polysemy-conc = {
  meta = {
    sha256 = "00ds083rpahv3q5n355hcbgv1ba7l121bpj642pkc7z0lpciq0z5";
    url = "https://hackage.haskell.org";
    ver = "0.15.0.0";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.15.0.0";
  src = /nix/store/gjpqg6nqs2kxqgawxckyj52lpwshqi5v-source;
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
    url = "https://hackage.haskell.org";
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
    sha256 = "1i2bnpd3l357jhln8xl92z65b3mskz9y8z1xlha4lm0m855qyk15";
    url = "https://hackage.haskell.org";
    ver = "0.9.0.1";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.9.0.1";
  src = /nix/store/mxw7kjiqx9gr4p06crj2j0f34rkdrdqn-source;
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
    sha256 = "0faajcwslgkjigakimz5sxvcd92p8vdzafway8js8622jmprjqjb";
    url = "https://hackage.haskell.org";
    ver = "0.11.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.11.0.1";
  src = /nix/store/9wmv0p0kdcd3ccqa13wg4h4d1jfis948-source;
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
    sha256 = "1g536vx6yflx86yb7l8ld47byasj2dx8qsy32ji5dk7qi059mnwg";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.2";
  };
  drv = { mkDerivation, aeson, base, incipit-core, lib, polysemy-test
, tasty, template-haskell, time, torsor
}:
mkDerivation {
  pname = "polysemy-time";
  version = "0.7.0.2";
  src = /nix/store/s8nnhjqzc3h3l34qvjp97inmw87sf8ka-source;
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
    url = "https://hackage.haskell.org";
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
    sha256 = "17sfq3kzzdh28vin3kxw6l73jnrawf45cb4rhkcvajhsa9wkwsgv";
    url = "https://hackage.haskell.org";
    ver = "1.3.1.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1.1";
  src = /nix/store/gsd0czq9iycmnncqf6h5p1p0qk1ma57m-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    unordered-containers vector
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
    sha256 = "0nc2c573inxnp4nz3pbahb66ca9750zdgashwnak7kxyrq7d763l";
    url = "https://hackage.haskell.org";
    ver = "6.0.2";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, hashable, lib, tagged, template-haskell
, transformers, transformers-compat, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.2";
  src = /nix/store/clbl4jx9x8bnjickxhp9s0k5hc87rfq4-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    hashable tagged template-haskell transformers transformers-compat
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
    sha256 = "0x6khif6n0rzfgkvrbiagg1sj0lwmjfr6qarjnjwmb9ywdk7598b";
    url = "https://hackage.haskell.org";
    ver = "1.5.4";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.4";
  src = /nix/store/mk9c6p551r7vmw9l8cgqrc0k3phszvbi-source;
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
    url = "https://hackage.haskell.org";
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
    unordered-containers = {
  meta = {
    sha256 = "0na84q5vxxww3pmz72ihpx4j7dhk71z28r55i7j0pq7mj27jasb0";
    url = "https://hackage.haskell.org";
    ver = "0.2.21";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.21";
  src = /nix/store/ld4hwdryaajryhzbsrflbpnqvd0pj634-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap random
    tasty-bench
  ];
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
}
;
}
;
    witherable = {
  meta = {
    sha256 = "0xm77dqyfm0zh0xvnh1srwxrkn4sl7m126lqhbzc4q9f6lziwzdx";
    url = "https://hackage.haskell.org";
    ver = "0.5";
  };
  drv = { mkDerivation, base, base-orphans, containers, hashable
, indexed-traversable, indexed-traversable-instances, lib
, QuickCheck, quickcheck-instances, tasty, tasty-quickcheck
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "witherable";
  version = "0.5";
  src = /nix/store/gz5hm6n4glpkkrhb8n86y8xpqa8xakf8-source;
  libraryHaskellDepends = [
    base base-orphans containers hashable indexed-traversable
    indexed-traversable-instances transformers unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers hashable QuickCheck quickcheck-instances tasty
    tasty-quickcheck transformers unordered-containers vector
  ];
  homepage = "https://github.com/fumieval/witherable";
  description = "filterable traversable";
  license = lib.licenses.bsd3;
}
;
}
;
  };
  latest-polysemy-log-co = {
    incipit-core = {
  meta = {
    sha256 = "1bnaqzdc1vs9vcdlbaljdwv586syam3ahppqq9lwmg2jcvqp2zqr";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.7.0.1";
  src = /nix/store/fphdspn1hwi7ygddkdy3m6qdvc2vlkx6-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    polysemy-conc = {
  meta = {
    sha256 = "00ds083rpahv3q5n355hcbgv1ba7l121bpj642pkc7z0lpciq0z5";
    url = "https://hackage.haskell.org";
    ver = "0.15.0.0";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.15.0.0";
  src = /nix/store/gjpqg6nqs2kxqgawxckyj52lpwshqi5v-source;
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
    polysemy-log = {
  meta = {
    sha256 = "09jdy3jzry31knaydjqka0mj8jwscdys5wq2xij21lxbxr5msy1m";
    url = "https://hackage.haskell.org";
    ver = "0.11.1.0";
  };
  drv = { mkDerivation, ansi-terminal, async, base, incipit-core, lib
, polysemy, polysemy-conc, polysemy-plugin, polysemy-test
, polysemy-time, stm, tasty, time
}:
mkDerivation {
  pname = "polysemy-log";
  version = "0.11.1.0";
  src = /nix/store/5j242iz4v4jac7f008bm2fwy4rrrpij7-source;
  libraryHaskellDepends = [
    ansi-terminal async base incipit-core polysemy polysemy-conc
    polysemy-time stm time
  ];
  testHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
    polysemy-test polysemy-time tasty time
  ];
  benchmarkHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
  ];
  homepage = "https://github.com/tek/polysemy-log#readme";
  description = "Polysemy effects for logging";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    polysemy-resume = {
  meta = {
    sha256 = "1i2bnpd3l357jhln8xl92z65b3mskz9y8z1xlha4lm0m855qyk15";
    url = "https://hackage.haskell.org";
    ver = "0.9.0.1";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.9.0.1";
  src = /nix/store/mxw7kjiqx9gr4p06crj2j0f34rkdrdqn-source;
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
    sha256 = "0faajcwslgkjigakimz5sxvcd92p8vdzafway8js8622jmprjqjb";
    url = "https://hackage.haskell.org";
    ver = "0.11.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.11.0.1";
  src = /nix/store/9wmv0p0kdcd3ccqa13wg4h4d1jfis948-source;
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
    sha256 = "1g536vx6yflx86yb7l8ld47byasj2dx8qsy32ji5dk7qi059mnwg";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.2";
  };
  drv = { mkDerivation, aeson, base, incipit-core, lib, polysemy-test
, tasty, template-haskell, time, torsor
}:
mkDerivation {
  pname = "polysemy-time";
  version = "0.7.0.2";
  src = /nix/store/s8nnhjqzc3h3l34qvjp97inmw87sf8ka-source;
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
    tasty = {
  meta = {
    sha256 = "0x6khif6n0rzfgkvrbiagg1sj0lwmjfr6qarjnjwmb9ywdk7598b";
    url = "https://hackage.haskell.org";
    ver = "1.5.4";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.4";
  src = /nix/store/mk9c6p551r7vmw9l8cgqrc0k3phszvbi-source;
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
    url = "https://hackage.haskell.org";
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
  latest-polysemy-log-di = {
    incipit-core = {
  meta = {
    sha256 = "1bnaqzdc1vs9vcdlbaljdwv586syam3ahppqq9lwmg2jcvqp2zqr";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.7.0.1";
  src = /nix/store/fphdspn1hwi7ygddkdy3m6qdvc2vlkx6-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    polysemy-conc = {
  meta = {
    sha256 = "00ds083rpahv3q5n355hcbgv1ba7l121bpj642pkc7z0lpciq0z5";
    url = "https://hackage.haskell.org";
    ver = "0.15.0.0";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.15.0.0";
  src = /nix/store/gjpqg6nqs2kxqgawxckyj52lpwshqi5v-source;
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
    polysemy-log = {
  meta = {
    sha256 = "09jdy3jzry31knaydjqka0mj8jwscdys5wq2xij21lxbxr5msy1m";
    url = "https://hackage.haskell.org";
    ver = "0.11.1.0";
  };
  drv = { mkDerivation, ansi-terminal, async, base, incipit-core, lib
, polysemy, polysemy-conc, polysemy-plugin, polysemy-test
, polysemy-time, stm, tasty, time
}:
mkDerivation {
  pname = "polysemy-log";
  version = "0.11.1.0";
  src = /nix/store/5j242iz4v4jac7f008bm2fwy4rrrpij7-source;
  libraryHaskellDepends = [
    ansi-terminal async base incipit-core polysemy polysemy-conc
    polysemy-time stm time
  ];
  testHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
    polysemy-test polysemy-time tasty time
  ];
  benchmarkHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
  ];
  homepage = "https://github.com/tek/polysemy-log#readme";
  description = "Polysemy effects for logging";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    polysemy-resume = {
  meta = {
    sha256 = "1i2bnpd3l357jhln8xl92z65b3mskz9y8z1xlha4lm0m855qyk15";
    url = "https://hackage.haskell.org";
    ver = "0.9.0.1";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.9.0.1";
  src = /nix/store/mxw7kjiqx9gr4p06crj2j0f34rkdrdqn-source;
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
    sha256 = "0faajcwslgkjigakimz5sxvcd92p8vdzafway8js8622jmprjqjb";
    url = "https://hackage.haskell.org";
    ver = "0.11.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.11.0.1";
  src = /nix/store/9wmv0p0kdcd3ccqa13wg4h4d1jfis948-source;
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
    sha256 = "1g536vx6yflx86yb7l8ld47byasj2dx8qsy32ji5dk7qi059mnwg";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.2";
  };
  drv = { mkDerivation, aeson, base, incipit-core, lib, polysemy-test
, tasty, template-haskell, time, torsor
}:
mkDerivation {
  pname = "polysemy-time";
  version = "0.7.0.2";
  src = /nix/store/s8nnhjqzc3h3l34qvjp97inmw87sf8ka-source;
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
    tasty = {
  meta = {
    sha256 = "0x6khif6n0rzfgkvrbiagg1sj0lwmjfr6qarjnjwmb9ywdk7598b";
    url = "https://hackage.haskell.org";
    ver = "1.5.4";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.4";
  src = /nix/store/mk9c6p551r7vmw9l8cgqrc0k3phszvbi-source;
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
    url = "https://hackage.haskell.org";
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
  lower-polysemy-log = {
    QuickCheck = {
  meta = {
    sha256 = "18451rdmih1jkrsrckdcix71zqihc4h2caic7qzizxjg4hqpapji";
    url = "https://hackage.haskell.org";
    ver = "2.14.3";
  };
  drv = { mkDerivation, base, containers, deepseq, lib, process, random
, splitmix, template-haskell, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.14.3";
  src = /nix/store/kh42dp9c3b6mjrf9cpskg33vgxfr598p-source;
  libraryHaskellDepends = [
    base containers deepseq random splitmix template-haskell
    transformers
  ];
  testHaskellDepends = [ base deepseq process ];
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = lib.licenses.bsd3;
}
;
}
;
    aeson = {
  meta = {
    sha256 = "1f1f6h2r60ghz4p1ddi6wnq6z3i07j60sgm77hx2rvmncz4vizp0";
    url = "https://hackage.haskell.org";
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
    sha256 = "14h242d6q00ibxdngm58jwwms9cmcvdiqj8d4pxwprzihqgmbwxn";
    url = "https://hackage.haskell.org";
    ver = "1.1";
  };
  drv = { mkDerivation, ansi-terminal-types, base, colour, lib }:
mkDerivation {
  pname = "ansi-terminal";
  version = "1.1";
  src = /nix/store/n4akhijrki9055s5080m5gsni9lizzzq-source;
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
    url = "https://hackage.haskell.org";
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
    async = {
  meta = {
    sha256 = "0wjyyqvlvvq75ywpr86myib34z29k7i32rnwcqpwfi0d3p7nx055";
    url = "https://hackage.haskell.org";
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
    atomic-primops = {
  meta = {
    sha256 = "1razf9zq71am8x1813rrq8m14z6lnrkaacw4zcr5rii6f1q1l6xh";
    url = "https://hackage.haskell.org";
    ver = "0.8.8";
  };
  drv = { mkDerivation, base, ghc-prim, lib, primitive }:
mkDerivation {
  pname = "atomic-primops";
  version = "0.8.8";
  src = /nix/store/yvyb2fz95y72a66y5jy1202a0z14cahv-source;
  libraryHaskellDepends = [ base ghc-prim primitive ];
  homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
  description = "A safe approach to CAS and other atomic ops in Haskell";
  license = lib.licenses.bsd3;
}
;
}
;
    attoparsec = {
  meta = {
    sha256 = "0y9dph5axyvr1bfcvmz6qh50bjcp50m2ljra14960anc6g74a3c8";
    url = "https://hackage.haskell.org";
    ver = "0.14.4";
  };
  drv = { mkDerivation, array, base, bytestring, case-insensitive
, containers, deepseq, directory, filepath, ghc-prim, http-types
, lib, parsec, QuickCheck, quickcheck-unicode, scientific, tasty
, tasty-bench, tasty-quickcheck, text, transformers
, unordered-containers, vector
}:
mkDerivation {
  pname = "attoparsec";
  version = "0.14.4";
  src = /nix/store/cy9l5kw9c213v64k3q07lgxaga8yai9b-source;
  libraryHaskellDepends = [
    array base bytestring containers deepseq ghc-prim scientific text
    transformers
  ];
  testHaskellDepends = [
    array base bytestring deepseq QuickCheck quickcheck-unicode
    scientific tasty tasty-quickcheck text transformers vector
  ];
  benchmarkHaskellDepends = [
    array base bytestring case-insensitive containers deepseq directory
    filepath ghc-prim http-types parsec scientific tasty-bench text
    transformers unordered-containers vector
  ];
  doHaddock = false;
  homepage = "https://github.com/bgamari/attoparsec";
  description = "Fast combinator parsing for bytestrings and text";
  license = lib.licenses.bsd3;
}
;
}
;
    base-compat = {
  meta = {
    sha256 = "19pgyjgwx81vlyl8c0rlmfcympzy38bsmjq238dn8fv5b03jck4r";
    url = "https://hackage.haskell.org";
    ver = "0.13.1";
  };
  drv = { mkDerivation, base, ghc-prim, lib, unix }:
mkDerivation {
  pname = "base-compat";
  version = "0.13.1";
  src = /nix/store/qgi5ixllx7m87ayb7shqxcb88xvgl7nj-source;
  libraryHaskellDepends = [ base ghc-prim unix ];
  description = "A compatibility layer for base";
  license = lib.licenses.mit;
}
;
}
;
    base-compat-batteries = {
  meta = {
    sha256 = "06fq90abnlqdsa7iqfmp1fndldmfdfjvx8n8s963nnvnmq6hxs4g";
    url = "https://hackage.haskell.org";
    ver = "0.13.1";
  };
  drv = { mkDerivation, base, base-compat, foldable1-classes-compat
, ghc-prim, hspec, hspec-discover, lib, OneTuple, QuickCheck
}:
mkDerivation {
  pname = "base-compat-batteries";
  version = "0.13.1";
  src = /nix/store/8mwq3g5hkgf2z8acw7g9zhzzlpcpxc2v-source;
  libraryHaskellDepends = [
    base base-compat foldable1-classes-compat ghc-prim OneTuple
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  description = "base-compat with extra batteries";
  license = lib.licenses.mit;
}
;
}
;
    bifunctors = {
  meta = {
    sha256 = "0hvfzxbj181y61k14fvs5q2vjp1s7s1fay15q6kzvh1b38wg7y0l";
    url = "https://hackage.haskell.org";
    ver = "5.6.3";
  };
  drv = { mkDerivation, assoc, base, comonad, containers
, foldable1-classes-compat, hspec, hspec-discover, lib, QuickCheck
, tagged, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.3";
  src = /nix/store/8s8g4p0qgm1k1jfiz614kz13r13074gy-source;
  libraryHaskellDepends = [
    assoc base comonad containers foldable1-classes-compat tagged
    template-haskell th-abstraction
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
    cabal-doctest = {
  meta = {
    sha256 = "094mvqgh9bhx5v9xanzkhcm8pcxzmkaa68lr3bqpjzkdxydx81nk";
    url = "https://hackage.haskell.org";
    ver = "1.0.12";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.12";
  src = /nix/store/dh7hx0wqn5821ds0dfsrahz1vyib9xi9-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
    concurrent-output = {
  meta = {
    sha256 = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
    url = "https://hackage.haskell.org";
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
    constraints = {
  meta = {
    sha256 = "00cjd15kn30qgq541s0g3sd2lnvrdswx3bkafk0bmrg9b0kdb6hg";
    url = "https://hackage.haskell.org";
    ver = "0.14.4";
  };
  drv = { mkDerivation, base, binary, boring, deepseq, hashable, hspec
, hspec-discover, lib, mtl, transformers
}:
mkDerivation {
  pname = "constraints";
  version = "0.14.4";
  src = /nix/store/2k6n5ivkla205m35i77cdwf4dn9vdr2x-source;
  libraryHaskellDepends = [
    base binary boring deepseq hashable mtl transformers
  ];
  testHaskellDepends = [ base hspec ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/constraints/";
  description = "Constraint manipulation";
  license = lib.licenses.bsd2;
}
;
}
;
    data-fix = {
  meta = {
    sha256 = "0x8r2r8gmdvsclaszg90zn7gla6s8r6salbvgfsp0rscdjzj01ry";
    url = "https://hackage.haskell.org";
    ver = "0.3.4";
  };
  drv = { mkDerivation, base, deepseq, hashable, lib }:
mkDerivation {
  pname = "data-fix";
  version = "0.3.4";
  src = /nix/store/rk6gaw2jpjnd6hqhfwd1kr7c0pb5p370-source;
  libraryHaskellDepends = [ base deepseq hashable ];
  homepage = "https://github.com/spell-music/data-fix";
  description = "Fixpoint data types";
  license = lib.licenses.bsd3;
}
;
}
;
    ghc-tcplugins-extra = {
  meta = {
    sha256 = "0d0b6h23yq4jccv00wgikxr7hqprkf8afzxcy1mrlgwa9158sl3l";
    url = "https://hackage.haskell.org";
    ver = "0.4.6";
  };
  drv = { mkDerivation, base, ghc, lib }:
mkDerivation {
  pname = "ghc-tcplugins-extra";
  version = "0.4.6";
  src = /nix/store/hd335h1j3d7i5gj92jjkp3s4k4qnd1lg-source;
  libraryHaskellDepends = [ base ghc ];
  homepage = "https://github.com/clash-lang/ghc-tcplugins-extra#readme";
  description = "Utilities for writing GHC type-checker plugins";
  license = lib.licenses.bsd2;
}
;
}
;
    hashable = {
  meta = {
    sha256 = "0a8jcfmak3b130x5xim4d6qsqmfp8779wvq5va9irncn6827ihzi";
    url = "https://hackage.haskell.org";
    ver = "1.4.4.0";
  };
  drv = { mkDerivation, base, bytestring, containers, deepseq, filepath
, ghc-bignum, ghc-prim, HUnit, lib, os-string, QuickCheck, random
, test-framework, test-framework-hunit, test-framework-quickcheck2
, text, unix
}:
mkDerivation {
  pname = "hashable";
  version = "1.4.4.0";
  src = /nix/store/84yi2sv3xcy5xkb55sqjrgyq2cgabiml-source;
  libraryHaskellDepends = [
    base bytestring containers deepseq filepath ghc-bignum ghc-prim
    os-string text
  ];
  testHaskellDepends = [
    base bytestring filepath ghc-prim HUnit os-string QuickCheck random
    test-framework test-framework-hunit test-framework-quickcheck2 text
    unix
  ];
  homepage = "http://github.com/haskell-unordered-containers/hashable";
  description = "A class for types that can be converted to a hash value";
  license = lib.licenses.bsd3;
}
;
}
;
    hedgehog = {
  meta = {
    sha256 = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
    url = "https://hackage.haskell.org";
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
    incipit-core = {
  meta = {
    sha256 = "0qpw07f8ip6h7srqkbzfxyz1z36n75irhc6465s9xvrii1840b2k";
    url = "https://hackage.haskell.org";
    ver = "0.6.1.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.6.1.1";
  src = /nix/store/hhmdm0brw0bh41z3lggk75mj5765flmg-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    indexed-traversable-instances = {
  meta = {
    sha256 = "1issj9yfpxnshm6k7xq3wmmgrhn87cb0jalp0d1ls3zqx0qjrr03";
    url = "https://hackage.haskell.org";
    ver = "0.1.2.1";
  };
  drv = { mkDerivation, base, containers, indexed-traversable, lib
, OneTuple, QuickCheck, quickcheck-instances, tagged, tasty
, tasty-quickcheck, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.2.1";
  src = /nix/store/4fg6lbfn2wpy1lfqwyvhm70r92n5k437-source;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck unordered-containers
    vector
  ];
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    lifted-async = {
  meta = {
    sha256 = "0cgzs8sfr3l7ah5nnscpp50v5mmvc4hqf02zdi4h344dbbha10fy";
    url = "https://hackage.haskell.org";
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
    optparse-applicative = {
  meta = {
    sha256 = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
    url = "https://hackage.haskell.org";
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
    url = "https://hackage.haskell.org";
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
    url = "https://hackage.haskell.org";
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
    sha256 = "1af07cppnjpv5v56wanya1mhkvbfnyynf5447mnkcf4zc4k23pyk";
    url = "https://hackage.haskell.org";
    ver = "1.9.0.0";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.0.0";
  src = /nix/store/kvnhlq5qdjyvr6xqllbjpnahlmgv2xjh-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base containers first-class-families mtl stm syb
    template-haskell th-abstraction transformers type-errors unagi-chan
  ];
  testHaskellDepends = [
    async base containers doctest first-class-families hspec
    hspec-discover inspection-testing mtl stm syb template-haskell
    th-abstraction transformers type-errors unagi-chan
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Higher-order, low-boilerplate free monads";
  license = lib.licenses.bsd3;
}
;
}
;
    polysemy-conc = {
  meta = {
    sha256 = "00ds083rpahv3q5n355hcbgv1ba7l121bpj642pkc7z0lpciq0z5";
    url = "https://hackage.haskell.org";
    ver = "0.15.0.0";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.15.0.0";
  src = /nix/store/gjpqg6nqs2kxqgawxckyj52lpwshqi5v-source;
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
    sha256 = "08ry72bw78fis9iallzw6wsrzxnlmayq2k2yy0j79hpw4sp8knmg";
    url = "https://hackage.haskell.org";
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
    sha256 = "0d6hi0p71z2nv1xpd163gjv2yrnwsj0w7cx1nqabw53gpr63mrip";
    url = "https://hackage.haskell.org";
    ver = "0.9.0.2";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.9.0.2";
  src = /nix/store/c73wa2bm1qgz5vc2gfzv3xh2rzhryrm4-source;
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
    url = "https://hackage.haskell.org";
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
    sha256 = "1ay0ym01wznk98km2ksw8slj52gc7rav6n16z4sndzsw7cdwdq2y";
    url = "https://hackage.haskell.org";
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
    sha256 = "0kyl47b83rs2kbifam2wimqv1zz80qkfwznkmq5qwlhr05gxrz58";
    url = "https://hackage.haskell.org";
    ver = "1.1.4";
  };
  drv = { mkDerivation, ansi-terminal, base, base-compat, containers
, deepseq, doctest, lib, prettyprinter, QuickCheck, tasty-bench
, text
}:
mkDerivation {
  pname = "prettyprinter-ansi-terminal";
  version = "1.1.4";
  src = /nix/store/0yxfqp9l0mm8ir22b3qpzph66r3hwqa6-source;
  libraryHaskellDepends = [ ansi-terminal base prettyprinter text ];
  testHaskellDepends = [ base doctest ];
  benchmarkHaskellDepends = [
    base base-compat containers deepseq prettyprinter QuickCheck
    tasty-bench text
  ];
  homepage = "http://github.com/quchen/prettyprinter";
  description = "ANSI terminal backend for the »prettyprinter« package";
  license = lib.licenses.bsd2;
}
;
}
;
    primitive = {
  meta = {
    sha256 = "0y8yw8fnfh4dg6yjny2y8b4pmvvhhr7611j2z7i1dnl8w8cvbmb3";
    url = "https://hackage.haskell.org";
    ver = "0.8.0.0";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, ghc-prim, lib
, QuickCheck, quickcheck-classes-base, tagged, tasty, tasty-bench
, tasty-quickcheck, template-haskell, transformers
, transformers-compat
}:
mkDerivation {
  pname = "primitive";
  version = "0.8.0.0";
  src = /nix/store/31b36j6yiacsg41qbg42kdlrxzgsgpp0-source;
  libraryHaskellDepends = [
    base deepseq template-haskell transformers
  ];
  testHaskellDepends = [
    base base-orphans ghc-prim QuickCheck quickcheck-classes-base
    tagged tasty tasty-quickcheck transformers transformers-compat
  ];
  benchmarkHaskellDepends = [
    base deepseq tasty-bench transformers
  ];
  homepage = "https://github.com/haskell/primitive";
  description = "Primitive memory-related operations";
  license = lib.licenses.bsd3;
}
;
}
;
    resourcet = {
  meta = {
    sha256 = "0ffmm850z3n95vyj33gfqk606kfn6d50b9bnylqn8y4zrcv5yjmk";
    url = "https://hackage.haskell.org";
    ver = "1.3.0";
  };
  drv = { mkDerivation, base, containers, exceptions, hspec, lib, mtl
, primitive, transformers, unliftio-core
}:
mkDerivation {
  pname = "resourcet";
  version = "1.3.0";
  src = /nix/store/1ik3lcb99cfv7glky0aqy67z856rrllw-source;
  libraryHaskellDepends = [
    base containers exceptions mtl primitive transformers unliftio-core
  ];
  testHaskellDepends = [ base exceptions hspec transformers ];
  homepage = "http://github.com/snoyberg/conduit";
  description = "Deterministic allocation and freeing of scarce resources";
  license = lib.licenses.bsd3;
}
;
}
;
    scientific = {
  meta = {
    sha256 = "09iwj0snmx7vj7x03l4vdcn76zylcgxd9pyz0yxkydgfnn3lvc08";
    url = "https://hackage.haskell.org";
    ver = "0.3.7.0";
  };
  drv = { mkDerivation, base, binary, bytestring, containers, criterion
, deepseq, hashable, integer-logarithms, lib, primitive, QuickCheck
, smallcheck, tasty, tasty-hunit, tasty-quickcheck
, tasty-smallcheck, template-haskell, text
}:
mkDerivation {
  pname = "scientific";
  version = "0.3.7.0";
  src = /nix/store/w1dja7k810rw0zjrx9r91il6im2gq4iv-source;
  libraryHaskellDepends = [
    base binary bytestring containers deepseq hashable
    integer-logarithms primitive template-haskell text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck smallcheck tasty tasty-hunit
    tasty-quickcheck tasty-smallcheck text
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/basvandijk/scientific";
  description = "Numbers represented using scientific notation";
  license = lib.licenses.bsd3;
}
;
}
;
    semialign = {
  meta = {
    sha256 = "17sfq3kzzdh28vin3kxw6l73jnrawf45cb4rhkcvajhsa9wkwsgv";
    url = "https://hackage.haskell.org";
    ver = "1.3.1.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1.1";
  src = /nix/store/gsd0czq9iycmnncqf6h5p1p0qk1ma57m-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    unordered-containers vector
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
    sha256 = "0nc2c573inxnp4nz3pbahb66ca9750zdgashwnak7kxyrq7d763l";
    url = "https://hackage.haskell.org";
    ver = "6.0.2";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, foldable1-classes-compat, hashable, lib, tagged
, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.2";
  src = /nix/store/clbl4jx9x8bnjickxhp9s0k5hc87rfq4-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    foldable1-classes-compat hashable tagged template-haskell
    transformers transformers-compat unordered-containers
  ];
  homepage = "http://github.com/ekmett/semigroupoids";
  description = "Semigroupoids: Category sans id";
  license = lib.licenses.bsd2;
}
;
}
;
    strict = {
  meta = {
    sha256 = "02iyvrr7nd7fnivz78lzdchy8zw1cghqj1qx2yzbbb9869h1mny7";
    url = "https://hackage.haskell.org";
    ver = "0.5";
  };
  drv = { mkDerivation, assoc, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, text, these, transformers
}:
mkDerivation {
  pname = "strict";
  version = "0.5";
  src = /nix/store/21ahwfbr944xz0c7cs47f6z86p78plps-source;
  libraryHaskellDepends = [
    assoc base binary bytestring deepseq ghc-prim hashable text these
    transformers
  ];
  homepage = "https://github.com/haskell-strict/strict";
  description = "Strict data types and String IO";
  license = lib.licenses.bsd3;
}
;
}
;
    tasty = {
  meta = {
    sha256 = "1jqrcmibqv03109qc6lhi2jnip4mxygcd0j4j0g1n0q0akcplica";
    url = "https://hackage.haskell.org";
    ver = "1.5.2";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.2";
  src = /nix/store/ly5d0sscd0dwlyr06nqhyscj3a99j8np-source;
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
    url = "https://hackage.haskell.org";
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
    text-short = {
  meta = {
    sha256 = "1yzyzklry9cdc12283b0zf0kpa8nb7gixmdaf3l8x7388zpxhhay";
    url = "https://hackage.haskell.org";
    ver = "0.1.6.1";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.6.1";
  src = /nix/store/bf8cszj81rj7svdscshl17z7mnr8zrdk-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq ghc-prim hashable template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring tasty tasty-hunit tasty-quickcheck text
  ];
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
}
;
}
;
    th-abstraction = {
  meta = {
    sha256 = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
    url = "https://hackage.haskell.org";
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
    these = {
  meta = {
    sha256 = "0jqchlmycfcvkff48shhkswansnzrw57q8945m483mrd59zpg27k";
    url = "https://hackage.haskell.org";
    ver = "1.2.1";
  };
  drv = { mkDerivation, assoc, base, binary, deepseq
, foldable1-classes-compat, hashable, lib
}:
mkDerivation {
  pname = "these";
  version = "1.2.1";
  src = /nix/store/aaw05vz42pjyhry145973mssbqw1n5i9-source;
  libraryHaskellDepends = [
    assoc base binary deepseq foldable1-classes-compat hashable
  ];
  homepage = "https://github.com/haskellari/these";
  description = "An either-or-both data type";
  license = lib.licenses.bsd3;
}
;
}
;
    time-compat = {
  meta = {
    sha256 = "02yq6qc9fbawpxkypaf4nm9vidfv5vvgidxyj4r3dxa4lb29jd2p";
    url = "https://hackage.haskell.org";
    ver = "1.9.9";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, hashable, HUnit, lib
, QuickCheck, random, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, time
}:
mkDerivation {
  pname = "time-compat";
  version = "1.9.9";
  src = /nix/store/5d4j6ha2hgp5qfaw2li1gwh8wbn8y7xq-source;
  libraryHaskellDepends = [
    base base-orphans deepseq hashable template-haskell time
  ];
  testHaskellDepends = [
    base deepseq hashable HUnit QuickCheck random tasty tasty-hunit
    tasty-quickcheck template-haskell
  ];
  homepage = "https://github.com/haskellari/time-compat";
  description = "Compatibility package for time";
  license = lib.licenses.bsd3;
}
;
}
;
    type-errors = {
  meta = {
    sha256 = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
    url = "https://hackage.haskell.org";
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
    unagi-chan = {
  meta = {
    sha256 = "1glfzdm732p0zbwq6vg0syw4cg7f72k1982rc6ha8wyr46czdlmm";
    url = "https://hackage.haskell.org";
    ver = "0.4.1.4";
  };
  drv = { mkDerivation, async, atomic-primops, base, containers, criterion
, ghc-prim, lib, primitive
}:
mkDerivation {
  pname = "unagi-chan";
  version = "0.4.1.4";
  src = /nix/store/2p0881jypzjz8p12jq75cn3ynmns8rxr-source;
  libraryHaskellDepends = [ atomic-primops base ghc-prim primitive ];
  testHaskellDepends = [
    atomic-primops base containers ghc-prim primitive
  ];
  benchmarkHaskellDepends = [ async base criterion ];
  description = "Fast concurrent queues with a Chan-like API, and more";
  license = lib.licenses.bsd3;
}
;
}
;
    unordered-containers = {
  meta = {
    sha256 = "0na84q5vxxww3pmz72ihpx4j7dhk71z28r55i7j0pq7mj27jasb0";
    url = "https://hackage.haskell.org";
    ver = "0.2.21";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.21";
  src = /nix/store/ld4hwdryaajryhzbsrflbpnqvd0pj634-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap random
    tasty-bench
  ];
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
}
;
}
;
    uuid-types = {
  meta = {
    sha256 = "1jrid43smmfcchrfwpzkxil16a4c5016y4b49yjka0sildj1lprg";
    url = "https://hackage.haskell.org";
    ver = "1.0.6.1";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, hashable, lib
, QuickCheck, random, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "uuid-types";
  version = "1.0.6.1";
  src = /nix/store/d7pn428v517nab28kznyyr4ccypibj48-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq hashable random template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring QuickCheck tasty tasty-hunit
    tasty-quickcheck
  ];
  homepage = "https://github.com/haskell-hvr/uuid";
  description = "Type definitions for Universally Unique Identifiers";
  license = lib.licenses.bsd3;
}
;
}
;
    vector = {
  meta = {
    sha256 = "0mgc7ikhdgqwsj5skdxsf6v3a1iqkiiysqj94qnbg40ff8nbai4x";
    url = "https://hackage.haskell.org";
    ver = "0.13.2.0";
  };
  drv = { mkDerivation, base, base-orphans, deepseq, doctest, lib
, primitive, QuickCheck, random, tasty, tasty-bench, tasty-hunit
, tasty-inspection-testing, tasty-quickcheck, template-haskell
, transformers, vector-stream
}:
mkDerivation {
  pname = "vector";
  version = "0.13.2.0";
  src = /nix/store/b8qdb5sk1v1vp84rjv25n82721pdgixh-source;
  libraryHaskellDepends = [
    base deepseq primitive random tasty vector-stream
  ];
  testHaskellDepends = [
    base base-orphans doctest primitive QuickCheck random tasty
    tasty-hunit tasty-inspection-testing tasty-quickcheck
    template-haskell transformers
  ];
  benchmarkHaskellDepends = [ base random tasty tasty-bench ];
  doHaddock = false;
  homepage = "https://github.com/haskell/vector";
  description = "Efficient Arrays";
  license = lib.licenses.bsd3;
}
;
}
;
    witherable = {
  meta = {
    sha256 = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
    url = "https://hackage.haskell.org";
    ver = "0.4.2";
  };
  drv = { mkDerivation, base, base-orphans, containers, hashable
, indexed-traversable, indexed-traversable-instances, lib
, QuickCheck, quickcheck-instances, tasty, tasty-quickcheck
, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "witherable";
  version = "0.4.2";
  src = /nix/store/khn670w6drfhl6sgppi35rwi3ql27mrg-source;
  libraryHaskellDepends = [
    base base-orphans containers hashable indexed-traversable
    indexed-traversable-instances transformers unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers hashable QuickCheck quickcheck-instances tasty
    tasty-quickcheck transformers unordered-containers vector
  ];
  homepage = "https://github.com/fumieval/witherable";
  description = "filterable traversable";
  license = lib.licenses.bsd3;
}
;
}
;
  };
  lower-polysemy-log-co = {
    aeson = {
  meta = {
    sha256 = "1hf13pxldfyv49c4518s44zfspg6r54wylimca7kp59lhh5w099j";
    url = "https://hackage.haskell.org";
    ver = "2.2.4.1";
  };
  drv = { mkDerivation, base, base-compat, base-orphans, base16-bytestring
, bytestring, character-ps, containers, data-fix, deepseq, Diff
, directory, dlist, exceptions, filepath, generic-deriving
, generically, hashable, indexed-traversable, integer-conversion
, integer-logarithms, lib, network-uri, nothunks, OneTuple
, primitive, QuickCheck, quickcheck-instances, scientific
, semialign, strict, tagged, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, text, text-iso8601
, text-short, th-abstraction, these, time, time-compat
, unordered-containers, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.2.4.1";
  src = /nix/store/nqg2r8cak468751py2zaz1ck629jcpfz-source;
  libraryHaskellDepends = [
    base bytestring character-ps containers data-fix deepseq dlist
    exceptions hashable indexed-traversable integer-conversion
    integer-logarithms network-uri OneTuple primitive QuickCheck
    scientific semialign strict tagged template-haskell text
    text-iso8601 text-short th-abstraction these time time-compat
    unordered-containers uuid-types vector witherable
  ];
  testHaskellDepends = [
    base base-compat base-orphans base16-bytestring bytestring
    containers data-fix Diff directory dlist filepath generic-deriving
    generically hashable indexed-traversable integer-logarithms
    network-uri nothunks OneTuple QuickCheck quickcheck-instances
    scientific strict tagged tasty tasty-golden tasty-hunit
    tasty-quickcheck text text-short these time time-compat
    unordered-containers uuid-types vector
  ];
  homepage = "https://github.com/haskell/aeson";
  description = "Fast JSON parsing and encoding";
  license = lib.licenses.bsd3;
}
;
}
;
    bifunctors = {
  meta = {
    sha256 = "0hvfzxbj181y61k14fvs5q2vjp1s7s1fay15q6kzvh1b38wg7y0l";
    url = "https://hackage.haskell.org";
    ver = "5.6.3";
  };
  drv = { mkDerivation, assoc, base, comonad, containers
, foldable1-classes-compat, hspec, hspec-discover, lib, QuickCheck
, tagged, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.3";
  src = /nix/store/8s8g4p0qgm1k1jfiz614kz13r13074gy-source;
  libraryHaskellDepends = [
    assoc base comonad containers foldable1-classes-compat tagged
    template-haskell th-abstraction
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
    cabal-doctest = {
  meta = {
    sha256 = "094mvqgh9bhx5v9xanzkhcm8pcxzmkaa68lr3bqpjzkdxydx81nk";
    url = "https://hackage.haskell.org";
    ver = "1.0.12";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.12";
  src = /nix/store/dh7hx0wqn5821ds0dfsrahz1vyib9xi9-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
    co-log-concurrent = {
  meta = {
    sha256 = "0a4sxabpvg1wfdm05pxj0vxhh2hqypjhw3l20np903dqw960vh1m";
    url = "https://hackage.haskell.org";
    ver = "0.5.1.0";
  };
  drv = { mkDerivation, base, co-log-core, lib, stm }:
mkDerivation {
  pname = "co-log-concurrent";
  version = "0.5.1.0";
  src = /nix/store/4vfv9ip3g76p8lry97rkgiz9qlwchfwp-source;
  libraryHaskellDepends = [ base co-log-core stm ];
  homepage = "https://github.com/qnikst/co-log-concurrent/";
  description = "Asynchronous backend for co-log library";
  license = lib.licenses.mpl20;
}
;
}
;
    co-log-polysemy = {
  meta = {
    sha256 = "19p8igm32p030nlpan4pi4yab7w7wzzyqc12pvgysfl4jpi5v60h";
    url = "https://hackage.haskell.org";
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
    incipit-core = {
  meta = {
    sha256 = "1bnaqzdc1vs9vcdlbaljdwv586syam3ahppqq9lwmg2jcvqp2zqr";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.7.0.1";
  src = /nix/store/fphdspn1hwi7ygddkdy3m6qdvc2vlkx6-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    indexed-traversable-instances = {
  meta = {
    sha256 = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
    url = "https://hackage.haskell.org";
    ver = "0.1.2";
  };
  drv = { mkDerivation, base, containers, indexed-traversable, lib
, OneTuple, QuickCheck, quickcheck-instances, tagged, tasty
, tasty-quickcheck, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.2";
  src = /nix/store/dk7n8w7k4bfq5iph1v2z0fl8mh8s3js3-source;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck transformers
    unordered-containers vector
  ];
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    path = {
  meta = {
    sha256 = "05b84rizmrii847pq2fbvlpna796bwxha1vc01c3vxb2rhrknrf7";
    url = "https://hackage.haskell.org";
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
    url = "https://hackage.haskell.org";
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
    sha256 = "05mhzjz6hz0dnxsn3cc0l6yyj5ch35gn8xfnx0a1gn3q8yljfg2a";
    url = "https://hackage.haskell.org";
    ver = "1.9.1.0";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.0";
  src = /nix/store/wi4h6ks79hii1j1am583a9ylanai1mbp-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base containers first-class-families mtl stm syb
    template-haskell th-abstraction transformers type-errors unagi-chan
  ];
  testHaskellDepends = [
    async base containers doctest first-class-families hspec
    hspec-discover inspection-testing mtl stm syb template-haskell
    th-abstraction transformers type-errors unagi-chan
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Higher-order, low-boilerplate free monads";
  license = lib.licenses.bsd3;
}
;
}
;
    polysemy-conc = {
  meta = {
    sha256 = "00ds083rpahv3q5n355hcbgv1ba7l121bpj642pkc7z0lpciq0z5";
    url = "https://hackage.haskell.org";
    ver = "0.15.0.0";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.15.0.0";
  src = /nix/store/gjpqg6nqs2kxqgawxckyj52lpwshqi5v-source;
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
    polysemy-log = {
  meta = {
    sha256 = "1dpgcvrjgpdpynnx804sdj4kpf06lvq0bqxqc79lazc2q82vaj6s";
    url = "https://hackage.haskell.org";
    ver = "0.7.2.0";
  };
  drv = { mkDerivation, ansi-terminal, async, base, incipit-core, lib
, polysemy, polysemy-conc, polysemy-plugin, polysemy-test
, polysemy-time, stm, tasty, time
}:
mkDerivation {
  pname = "polysemy-log";
  version = "0.7.2.0";
  src = /nix/store/n2v3zkwvdm70ww7s1wndpai1xms3g5h5-source;
  libraryHaskellDepends = [
    ansi-terminal async base incipit-core polysemy polysemy-conc
    polysemy-time stm time
  ];
  testHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
    polysemy-test polysemy-time tasty time
  ];
  benchmarkHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
  ];
  homepage = "https://github.com/tek/polysemy-log#readme";
  description = "Polysemy effects for logging";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    polysemy-resume = {
  meta = {
    sha256 = "1b9agh2qd0nrbd7cc5iabkzjb7g9lnzzy3pprvn33hr54va9p928";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.0";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.7.0.0";
  src = /nix/store/2l5708xrry0mnv5znidx9affjinmpryq-source;
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
    sha256 = "0faajcwslgkjigakimz5sxvcd92p8vdzafway8js8622jmprjqjb";
    url = "https://hackage.haskell.org";
    ver = "0.11.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.11.0.1";
  src = /nix/store/9wmv0p0kdcd3ccqa13wg4h4d1jfis948-source;
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
    sha256 = "1ay0ym01wznk98km2ksw8slj52gc7rav6n16z4sndzsw7cdwdq2y";
    url = "https://hackage.haskell.org";
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
    semialign = {
  meta = {
    sha256 = "17sfq3kzzdh28vin3kxw6l73jnrawf45cb4rhkcvajhsa9wkwsgv";
    url = "https://hackage.haskell.org";
    ver = "1.3.1.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1.1";
  src = /nix/store/gsd0czq9iycmnncqf6h5p1p0qk1ma57m-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    unordered-containers vector
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
    sha256 = "0nc2c573inxnp4nz3pbahb66ca9750zdgashwnak7kxyrq7d763l";
    url = "https://hackage.haskell.org";
    ver = "6.0.2";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, foldable1-classes-compat, hashable, lib, tagged
, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.2";
  src = /nix/store/clbl4jx9x8bnjickxhp9s0k5hc87rfq4-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    foldable1-classes-compat hashable tagged template-haskell
    transformers transformers-compat unordered-containers
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
    sha256 = "1jqrcmibqv03109qc6lhi2jnip4mxygcd0j4j0g1n0q0akcplica";
    url = "https://hackage.haskell.org";
    ver = "1.5.2";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.2";
  src = /nix/store/ly5d0sscd0dwlyr06nqhyscj3a99j8np-source;
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
    url = "https://hackage.haskell.org";
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
    text-short = {
  meta = {
    sha256 = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
    url = "https://hackage.haskell.org";
    ver = "0.1.6";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.6";
  src = /nix/store/szwhvms3jqw03gz4ydrwilgah3vshhh1-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq ghc-prim hashable template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring tasty tasty-hunit tasty-quickcheck
    template-haskell text
  ];
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
}
;
}
;
    th-abstraction = {
  meta = {
    sha256 = "0dkilfrvk8zdn3gvyfv5zgjbwqhdf1yg90fk4byka0ib43kgkyvf";
    url = "https://hackage.haskell.org";
    ver = "0.5.0.0";
  };
  drv = { mkDerivation, base, containers, ghc-prim, lib, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.5.0.0";
  src = /nix/store/2vqd74h0m054ngrfxigpx3hjyzv72724-source;
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
    type-errors = {
  meta = {
    sha256 = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
    url = "https://hackage.haskell.org";
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
    unordered-containers = {
  meta = {
    sha256 = "0dvlf9by7mkwaxg2x26m6bf5bnqr1l07j6adksavvziiq0x3p135";
    url = "https://hackage.haskell.org";
    ver = "0.2.20";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, mtl, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.20";
  src = /nix/store/mp0402hnkp6kfz16skphsdjfxaz088wh-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap mtl random
    tasty-bench
  ];
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
}
;
}
;
  };
  lower-polysemy-log-di = {
    aeson = {
  meta = {
    sha256 = "1hf13pxldfyv49c4518s44zfspg6r54wylimca7kp59lhh5w099j";
    url = "https://hackage.haskell.org";
    ver = "2.2.4.1";
  };
  drv = { mkDerivation, base, base-compat, base-orphans, base16-bytestring
, bytestring, character-ps, containers, data-fix, deepseq, Diff
, directory, dlist, exceptions, filepath, generic-deriving
, generically, hashable, indexed-traversable, integer-conversion
, integer-logarithms, lib, network-uri, nothunks, OneTuple
, primitive, QuickCheck, quickcheck-instances, scientific
, semialign, strict, tagged, tasty, tasty-golden, tasty-hunit
, tasty-quickcheck, template-haskell, text, text-iso8601
, text-short, th-abstraction, these, time, time-compat
, unordered-containers, uuid-types, vector, witherable
}:
mkDerivation {
  pname = "aeson";
  version = "2.2.4.1";
  src = /nix/store/nqg2r8cak468751py2zaz1ck629jcpfz-source;
  libraryHaskellDepends = [
    base bytestring character-ps containers data-fix deepseq dlist
    exceptions hashable indexed-traversable integer-conversion
    integer-logarithms network-uri OneTuple primitive QuickCheck
    scientific semialign strict tagged template-haskell text
    text-iso8601 text-short th-abstraction these time time-compat
    unordered-containers uuid-types vector witherable
  ];
  testHaskellDepends = [
    base base-compat base-orphans base16-bytestring bytestring
    containers data-fix Diff directory dlist filepath generic-deriving
    generically hashable indexed-traversable integer-logarithms
    network-uri nothunks OneTuple QuickCheck quickcheck-instances
    scientific strict tagged tasty tasty-golden tasty-hunit
    tasty-quickcheck text text-short these time time-compat
    unordered-containers uuid-types vector
  ];
  homepage = "https://github.com/haskell/aeson";
  description = "Fast JSON parsing and encoding";
  license = lib.licenses.bsd3;
}
;
}
;
    bifunctors = {
  meta = {
    sha256 = "0hvfzxbj181y61k14fvs5q2vjp1s7s1fay15q6kzvh1b38wg7y0l";
    url = "https://hackage.haskell.org";
    ver = "5.6.3";
  };
  drv = { mkDerivation, assoc, base, comonad, containers
, foldable1-classes-compat, hspec, hspec-discover, lib, QuickCheck
, tagged, template-haskell, th-abstraction
}:
mkDerivation {
  pname = "bifunctors";
  version = "5.6.3";
  src = /nix/store/8s8g4p0qgm1k1jfiz614kz13r13074gy-source;
  libraryHaskellDepends = [
    assoc base comonad containers foldable1-classes-compat tagged
    template-haskell th-abstraction
  ];
  testHaskellDepends = [ base hspec QuickCheck ];
  testToolDepends = [ hspec-discover ];
  homepage = "http://github.com/ekmett/bifunctors/";
  description = "Bifunctors";
  license = lib.licenses.bsd3;
}
;
}
;
    cabal-doctest = {
  meta = {
    sha256 = "094mvqgh9bhx5v9xanzkhcm8pcxzmkaa68lr3bqpjzkdxydx81nk";
    url = "https://hackage.haskell.org";
    ver = "1.0.12";
  };
  drv = { mkDerivation, base, Cabal, directory, filepath, lib }:
mkDerivation {
  pname = "cabal-doctest";
  version = "1.0.12";
  src = /nix/store/dh7hx0wqn5821ds0dfsrahz1vyib9xi9-source;
  libraryHaskellDepends = [ base Cabal directory filepath ];
  homepage = "https://github.com/ulidtko/cabal-doctest";
  description = "A Setup.hs helper for running doctests";
  license = lib.licenses.bsd3;
}
;
}
;
    di-polysemy = {
  meta = {
    sha256 = "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
    url = "https://hackage.haskell.org";
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
    incipit-core = {
  meta = {
    sha256 = "1bnaqzdc1vs9vcdlbaljdwv586syam3ahppqq9lwmg2jcvqp2zqr";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.1";
  };
  drv = { mkDerivation, base, incipit-base, lib, polysemy }:
mkDerivation {
  pname = "incipit-core";
  version = "0.7.0.1";
  src = /nix/store/fphdspn1hwi7ygddkdy3m6qdvc2vlkx6-source;
  libraryHaskellDepends = [ base incipit-base polysemy ];
  homepage = "https://github.com/tek/incipit-core#readme";
  description = "A Prelude for Polysemy";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    indexed-traversable-instances = {
  meta = {
    sha256 = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
    url = "https://hackage.haskell.org";
    ver = "0.1.2";
  };
  drv = { mkDerivation, base, containers, indexed-traversable, lib
, OneTuple, QuickCheck, quickcheck-instances, tagged, tasty
, tasty-quickcheck, transformers, unordered-containers, vector
}:
mkDerivation {
  pname = "indexed-traversable-instances";
  version = "0.1.2";
  src = /nix/store/dk7n8w7k4bfq5iph1v2z0fl8mh8s3js3-source;
  libraryHaskellDepends = [
    base indexed-traversable OneTuple tagged unordered-containers
    vector
  ];
  testHaskellDepends = [
    base containers indexed-traversable OneTuple QuickCheck
    quickcheck-instances tasty tasty-quickcheck transformers
    unordered-containers vector
  ];
  description = "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex";
  license = lib.licenses.bsd2;
}
;
}
;
    path = {
  meta = {
    sha256 = "05b84rizmrii847pq2fbvlpna796bwxha1vc01c3vxb2rhrknrf7";
    url = "https://hackage.haskell.org";
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
    url = "https://hackage.haskell.org";
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
    sha256 = "05mhzjz6hz0dnxsn3cc0l6yyj5ch35gn8xfnx0a1gn3q8yljfg2a";
    url = "https://hackage.haskell.org";
    ver = "1.9.1.0";
  };
  drv = { mkDerivation, async, base, Cabal, cabal-doctest, containers
, doctest, first-class-families, hspec, hspec-discover
, inspection-testing, lib, mtl, stm, syb, template-haskell
, th-abstraction, transformers, type-errors, unagi-chan
}:
mkDerivation {
  pname = "polysemy";
  version = "1.9.1.0";
  src = /nix/store/wi4h6ks79hii1j1am583a9ylanai1mbp-source;
  setupHaskellDepends = [ base Cabal cabal-doctest ];
  libraryHaskellDepends = [
    async base containers first-class-families mtl stm syb
    template-haskell th-abstraction transformers type-errors unagi-chan
  ];
  testHaskellDepends = [
    async base containers doctest first-class-families hspec
    hspec-discover inspection-testing mtl stm syb template-haskell
    th-abstraction transformers type-errors unagi-chan
  ];
  testToolDepends = [ hspec-discover ];
  homepage = "https://github.com/polysemy-research/polysemy#readme";
  description = "Higher-order, low-boilerplate free monads";
  license = lib.licenses.bsd3;
}
;
}
;
    polysemy-conc = {
  meta = {
    sha256 = "00ds083rpahv3q5n355hcbgv1ba7l121bpj642pkc7z0lpciq0z5";
    url = "https://hackage.haskell.org";
    ver = "0.15.0.0";
  };
  drv = { mkDerivation, async, base, hedgehog, incipit-core, lib, polysemy
, polysemy-plugin, polysemy-resume, polysemy-test, polysemy-time
, stm, stm-chans, tasty, tasty-hedgehog, time, torsor, unagi-chan
}:
mkDerivation {
  pname = "polysemy-conc";
  version = "0.15.0.0";
  src = /nix/store/gjpqg6nqs2kxqgawxckyj52lpwshqi5v-source;
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
    polysemy-log = {
  meta = {
    sha256 = "1dpgcvrjgpdpynnx804sdj4kpf06lvq0bqxqc79lazc2q82vaj6s";
    url = "https://hackage.haskell.org";
    ver = "0.7.2.0";
  };
  drv = { mkDerivation, ansi-terminal, async, base, incipit-core, lib
, polysemy, polysemy-conc, polysemy-plugin, polysemy-test
, polysemy-time, stm, tasty, time
}:
mkDerivation {
  pname = "polysemy-log";
  version = "0.7.2.0";
  src = /nix/store/n2v3zkwvdm70ww7s1wndpai1xms3g5h5-source;
  libraryHaskellDepends = [
    ansi-terminal async base incipit-core polysemy polysemy-conc
    polysemy-time stm time
  ];
  testHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
    polysemy-test polysemy-time tasty time
  ];
  benchmarkHaskellDepends = [
    base incipit-core polysemy polysemy-conc polysemy-plugin
  ];
  homepage = "https://github.com/tek/polysemy-log#readme";
  description = "Polysemy effects for logging";
  license = "BSD-2-Clause-Patent";
}
;
}
;
    polysemy-resume = {
  meta = {
    sha256 = "1b9agh2qd0nrbd7cc5iabkzjb7g9lnzzy3pprvn33hr54va9p928";
    url = "https://hackage.haskell.org";
    ver = "0.7.0.0";
  };
  drv = { mkDerivation, base, incipit-core, lib, polysemy, polysemy-plugin
, polysemy-test, stm, tasty, transformers
}:
mkDerivation {
  pname = "polysemy-resume";
  version = "0.7.0.0";
  src = /nix/store/2l5708xrry0mnv5znidx9affjinmpryq-source;
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
    sha256 = "0faajcwslgkjigakimz5sxvcd92p8vdzafway8js8622jmprjqjb";
    url = "https://hackage.haskell.org";
    ver = "0.11.0.1";
  };
  drv = { mkDerivation, base, hedgehog, incipit-core, lib, path, path-io
, polysemy, tasty, tasty-hedgehog, transformers
}:
mkDerivation {
  pname = "polysemy-test";
  version = "0.11.0.1";
  src = /nix/store/9wmv0p0kdcd3ccqa13wg4h4d1jfis948-source;
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
    sha256 = "1ay0ym01wznk98km2ksw8slj52gc7rav6n16z4sndzsw7cdwdq2y";
    url = "https://hackage.haskell.org";
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
    semialign = {
  meta = {
    sha256 = "17sfq3kzzdh28vin3kxw6l73jnrawf45cb4rhkcvajhsa9wkwsgv";
    url = "https://hackage.haskell.org";
    ver = "1.3.1.1";
  };
  drv = { mkDerivation, base, containers, hashable, indexed-traversable
, indexed-traversable-instances, lib, semigroupoids, tagged, these
, unordered-containers, vector
}:
mkDerivation {
  pname = "semialign";
  version = "1.3.1.1";
  src = /nix/store/gsd0czq9iycmnncqf6h5p1p0qk1ma57m-source;
  libraryHaskellDepends = [
    base containers hashable indexed-traversable
    indexed-traversable-instances semigroupoids tagged these
    unordered-containers vector
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
    sha256 = "0nc2c573inxnp4nz3pbahb66ca9750zdgashwnak7kxyrq7d763l";
    url = "https://hackage.haskell.org";
    ver = "6.0.2";
  };
  drv = { mkDerivation, base, base-orphans, bifunctors, comonad, containers
, contravariant, foldable1-classes-compat, hashable, lib, tagged
, template-haskell, transformers, transformers-compat
, unordered-containers
}:
mkDerivation {
  pname = "semigroupoids";
  version = "6.0.2";
  src = /nix/store/clbl4jx9x8bnjickxhp9s0k5hc87rfq4-source;
  libraryHaskellDepends = [
    base base-orphans bifunctors comonad containers contravariant
    foldable1-classes-compat hashable tagged template-haskell
    transformers transformers-compat unordered-containers
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
    sha256 = "1jqrcmibqv03109qc6lhi2jnip4mxygcd0j4j0g1n0q0akcplica";
    url = "https://hackage.haskell.org";
    ver = "1.5.2";
  };
  drv = { mkDerivation, ansi-terminal, base, containers, lib
, optparse-applicative, stm, tagged, transformers, unix
}:
mkDerivation {
  pname = "tasty";
  version = "1.5.2";
  src = /nix/store/ly5d0sscd0dwlyr06nqhyscj3a99j8np-source;
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
    url = "https://hackage.haskell.org";
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
    text-short = {
  meta = {
    sha256 = "08rwbc2zcvbvswvy0kp14jg2wq08ls6m6grywp0srjipavzx11s3";
    url = "https://hackage.haskell.org";
    ver = "0.1.6";
  };
  drv = { mkDerivation, base, binary, bytestring, deepseq, ghc-prim
, hashable, lib, tasty, tasty-hunit, tasty-quickcheck
, template-haskell, text
}:
mkDerivation {
  pname = "text-short";
  version = "0.1.6";
  src = /nix/store/szwhvms3jqw03gz4ydrwilgah3vshhh1-source;
  libraryHaskellDepends = [
    base binary bytestring deepseq ghc-prim hashable template-haskell
    text
  ];
  testHaskellDepends = [
    base binary bytestring tasty tasty-hunit tasty-quickcheck
    template-haskell text
  ];
  description = "Memory-efficient representation of Unicode text strings";
  license = lib.licenses.bsd3;
}
;
}
;
    th-abstraction = {
  meta = {
    sha256 = "0dkilfrvk8zdn3gvyfv5zgjbwqhdf1yg90fk4byka0ib43kgkyvf";
    url = "https://hackage.haskell.org";
    ver = "0.5.0.0";
  };
  drv = { mkDerivation, base, containers, ghc-prim, lib, template-haskell
}:
mkDerivation {
  pname = "th-abstraction";
  version = "0.5.0.0";
  src = /nix/store/2vqd74h0m054ngrfxigpx3hjyzv72724-source;
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
    type-errors = {
  meta = {
    sha256 = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
    url = "https://hackage.haskell.org";
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
    unordered-containers = {
  meta = {
    sha256 = "0dvlf9by7mkwaxg2x26m6bf5bnqr1l07j6adksavvziiq0x3p135";
    url = "https://hackage.haskell.org";
    ver = "0.2.20";
  };
  drv = { mkDerivation, base, bytestring, ChasingBottoms, containers
, deepseq, hashable, hashmap, HUnit, lib, mtl, nothunks, QuickCheck
, random, tasty, tasty-bench, tasty-hunit, tasty-quickcheck
, template-haskell
}:
mkDerivation {
  pname = "unordered-containers";
  version = "0.2.20";
  src = /nix/store/mp0402hnkp6kfz16skphsdjfxaz088wh-source;
  libraryHaskellDepends = [ base deepseq hashable template-haskell ];
  testHaskellDepends = [
    base ChasingBottoms containers hashable HUnit nothunks QuickCheck
    random tasty tasty-hunit tasty-quickcheck
  ];
  benchmarkHaskellDepends = [
    base bytestring containers deepseq hashable hashmap mtl random
    tasty-bench
  ];
  homepage = "https://github.com/haskell-unordered-containers/unordered-containers";
  description = "Efficient hashing-based container types";
  license = lib.licenses.bsd3;
}
;
}
;
  };
}