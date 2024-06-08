{
  bounds = {
    polysemy-log = {
      ansi-terminal = {
        lower = "0.9";
        upper = "1.1";
      };
      async = {
        lower = "2.2.4";
        upper = "2.3";
      };
      base = {
        lower = "4.17.2.1";
        upper = "4.20";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.7";
      };
      polysemy = {
        lower = "1.7.0.0";
        upper = "1.10";
      };
      polysemy-conc = {
        lower = "0.11.1.0";
        upper = "0.15";
      };
      polysemy-plugin = {
        lower = "0.4.4.0";
        upper = "0.5";
      };
      polysemy-test = {
        lower = "0.6.0.0";
        upper = "0.11";
      };
      polysemy-time = {
        lower = "0.6.0.0";
        upper = "0.8";
      };
      stm = {
        lower = "2.5.1.0";
        upper = "2.6";
      };
      tasty = {
        lower = "1.4.2";
        upper = "1.5";
      };
      time = {
        lower = "1.12.2";
        upper = "1.13";
      };
    };
    polysemy-log-di = {
      base = {
        lower = "4.17.2.1";
        upper = "4.20";
      };
      di-polysemy = {
        lower = "0.2.0.0";
        upper = "0.3";
      };
      incipit-core = {
        lower = "0.4.1.0";
        upper = "0.7";
      };
      polysemy = {
        lower = "1.7.0.0";
        upper = "1.10";
      };
      polysemy-conc = {
        lower = "0.11.1.0";
        upper = "0.15";
      };
      polysemy-test = {
        lower = "0.6.0.0";
        upper = "0.11";
      };
      polysemy-time = {
        lower = "0.6.0.0";
        upper = "0.8";
      };
      stm = {
        lower = "2.5.1.0";
        upper = "2.6";
      };
      tasty = {
        lower = "1.4.2";
        upper = "1.5";
      };
    };
  };
  versions = {
    latest = {
      ansi-terminal = "1.0.2";
      async = "2.2.5";
      base = "4.19.1.0";
      di-polysemy = "0.2.0.0";
      incipit-core = "0.6.0.0";
      polysemy = "1.9.2.0";
      polysemy-conc = "0.14.1.0";
      polysemy-plugin = "0.4.5.2";
      polysemy-test = "0.10.0.0";
      polysemy-time = "0.7.0.0";
      stm = "2.5.2.1";
      tasty = "1.4.3";
      time = "1.12.2";
    };
    lower = {
      ansi-terminal = "0.9";
      async = "2.2.4";
      base = "4.17.2.1";
      di-polysemy = "0.2.0.0";
      incipit-core = "0.4.1.0";
      polysemy = "1.7.0.0";
      polysemy-conc = "0.11.1.0";
      polysemy-plugin = "0.4.4.0";
      polysemy-test = "0.6.0.0";
      polysemy-time = "0.6.0.0";
      stm = "2.5.1.0";
      tasty = "1.4.2";
      time = "1.12.2";
    };
  };
  initial = {
    latest = {};
    lower = {
      ansi-terminal = "1.1";
      async = "2.2.4";
      di-polysemy = "0.2.0.0";
      incipit-core = "0.6.0.0";
      polysemy = "1.9.0.0";
      polysemy-conc = "0.14.0.0";
      polysemy-plugin = "0.4.4.0";
      polysemy-test = "0.7.0.0";
      polysemy-time = "0.7.0.0";
      stm = "2.5.1.0";
      tasty = "1.4.2";
      time = "1.12.2";
    };
  };
  overrides = {
    latest = {
      cabal-doctest = {
        version = "1.0.9";
        hash = "0irxfxy1qw7sif4408xdhqycddb4hs3hcf6xfxm65glsnmnmwl2i";
      };
      di-polysemy = {
        version = "0.2.0.0";
        hash = "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
      };
      incipit-base = {
        version = "0.6.0.0";
        hash = "1hck35yfy0dcgimgnd90w02zvv7x7k456bljrbx2mwxalnhav9gf";
      };
      incipit-core = {
        version = "0.6.0.0";
        hash = "0gmngb4pinkpbsnclrgs6x016ffnls1g4xzz0hdzg2rpyl63d5ph";
      };
      polysemy = {
        version = "1.9.2.0";
        hash = "00dq1ffsd9bld5zag4l2qssbmm4yb234cirsn5f19fmx43cdgngl";
      };
      polysemy-conc = {
        version = "0.14.1.0";
        hash = "0lzgw6dqhw0dv00bn9aasys2v8iddxyck5vmpglrp92chba55jxv";
      };
      polysemy-plugin = {
        version = "0.4.5.2";
        hash = "18y0nfx7x7am7cvj9wwhzal9bqv6sj7ckvmkd16blx4c2nqyikp9";
      };
      polysemy-resume = {
        version = "0.9.0.0";
        hash = "1achlwdkycbgjlcdkq641r481m1bl9rb7fklbwfb9nnb6xmqyzms";
      };
      polysemy-test = {
        version = "0.10.0.0";
        hash = "0vdsid9xg41szx4g37lmg44h31q7j9ll805rgfrpr1ylf4f3x1hp";
      };
      polysemy-time = {
        version = "0.7.0.0";
        hash = "0imvjiybxrsggh72pfkd226pvzhz5hg1zvxyd72b91a3xz1vynmq";
      };
    };
    lower = {
      aeson = {
        version = "2.1.2.1";
        hash = "1f1f6h2r60ghz4p1ddi6wnq6z3i07j60sgm77hx2rvmncz4vizp0";
      };
      ansi-terminal = {
        version = "0.9";
        hash = "0klcjdgh64hnwqf74p58p4v249wajwn2allfsyfak7vxlh7ml1pw";
      };
      assoc = {
        version = "1.1.1";
        hash = "0v4j6bn73dm3xnpkfdx0dg7q4vypl4k31pg35vycfp8w00jv6b6q";
      };
      async = {
        version = "2.2.4";
        hash = "0wjyyqvlvvq75ywpr86myib34z29k7i32rnwcqpwfi0d3p7nx055";
      };
      bifunctors = {
        version = "5.6.2";
        hash = "1g0z6q5z04zgp7kaf917nrj2iiz1lsqh8ji5ny5ly534zr9zya2m";
      };
      cabal-doctest = {
        version = "1.0.9";
        hash = "0irxfxy1qw7sif4408xdhqycddb4hs3hcf6xfxm65glsnmnmwl2i";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
      };
      comonad = {
        version = "5.0.8";
        hash = "1wwn8z9f3flqlka2k51wqw8wsjcxbp8mwg6yp3vbn6akyjrn36gc";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      di-polysemy = {
        version = "0.2.0.0";
        hash = "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
      };
      hedgehog = {
        version = "1.4";
        hash = "1qxxhs720im0wpa5lsca0l8qsfmhbyphd1aq01nv96v29lgv795b";
      };
      incipit-base = {
        version = "0.4.1.0";
        hash = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
      };
      incipit-core = {
        version = "0.4.1.0";
        hash = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
      };
      indexed-traversable = {
        version = "0.1.4";
        hash = "061xzz9m77rs6bk5vv2hd7givyq7ln0xffc6m1cxyyhyyr6lw3k0";
      };
      indexed-traversable-instances = {
        version = "0.1.2";
        hash = "05vpkasz70yjf09hsmbw7nap70sr8p5b7hrsdbmij8k8xqf3qg8r";
      };
      lifted-async = {
        version = "0.10.2.5";
        hash = "1bd00yz0f7hlxf85i5hzq1dnlqgnhd99d5zvkxb4710w0hrc28rx";
      };
      optparse-applicative = {
        version = "0.18.1.0";
        hash = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
      };
      path = {
        version = "0.9.5";
        hash = "05b84rizmrii847pq2fbvlpna796bwxha1vc01c3vxb2rhrknrf7";
      };
      path-io = {
        version = "1.8.2";
        hash = "063ma7gzqr5c6s8a1yv72jgll3xdajvgclbc8w0ddmqgcrb62x2k";
      };
      polysemy = {
        version = "1.7.0.0";
        hash = "14iah95ikydvqgjl9ybx2m0l9b92fb6clp2x3f777jgckjdkf3g5";
      };
      polysemy-conc = {
        version = "0.11.1.0";
        hash = "12w102jpdyrfjqz10bg8k0dyczvvii3x1v02vqd8is26qbfm20q0";
      };
      polysemy-plugin = {
        version = "0.4.4.0";
        hash = "08ry72bw78fis9iallzw6wsrzxnlmayq2k2yy0j79hpw4sp8knmg";
      };
      polysemy-resume = {
        version = "0.5.0.0";
        hash = "1yavr2h31ffxj861vscm2hddrwi977ddx0sn0hh47zn78pqafz77";
      };
      polysemy-test = {
        version = "0.6.0.0";
        hash = "07pi549ral22sxhja67k5b9v787q0b32ysp0bq9szhwjqgxsab46";
      };
      polysemy-time = {
        version = "0.6.0.0";
        hash = "1ay0ym01wznk98km2ksw8slj52gc7rav6n16z4sndzsw7cdwdq2y";
      };
      prettyprinter-ansi-terminal = {
        version = "1.1.3";
        hash = "09m8knzfvms12576pp2nrdn7j0wikylwjfr9r3z4swgipz1r3nki";
      };
      semialign = {
        version = "1.3.1";
        hash = "05h1ab484ghd2wzx4pdlsfwiy6rayy0lzwk9yda9il7fjwi9sj7n";
      };
      semigroupoids = {
        version = "6.0.1";
        hash = "10qd2y5f5m7jzrha1wfbwwybhhghdwkdmk9ajybdz8h88cz9ig2g";
      };
      strict = {
        version = "0.5";
        hash = "02iyvrr7nd7fnivz78lzdchy8zw1cghqj1qx2yzbbb9869h1mny7";
      };
      tasty = {
        version = "1.4.2";
        hash = "0jdr0r9x1apxfma0p5rvyai7sd9wsg22hblzcrxmw7lq34j1606f";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
      };
      th-abstraction = {
        version = "0.4.5.0";
        hash = "19nh7a9b4yif6sijp6xns6xlxcr1mcyrqx3cfbp5bdm7mkbda7a9";
      };
      these = {
        version = "1.2.1";
        hash = "0jqchlmycfcvkff48shhkswansnzrw57q8945m483mrd59zpg27k";
      };
      type-errors = {
        version = "0.2.0.2";
        hash = "09rkyqhx8jnzqiq7gpcm5jd1xd435h0ma0b2sff18lk31qv01x6g";
      };
      unbounded-delays = {
        version = "0.1.1.1";
        hash = "1kbh2yr7lwzrhjniyfllsix2zn8bmz9yrkhnq5lxv9ic9bbxnls7";
      };
      wcwidth = {
        version = "0.0.2";
        hash = "0131h9vg8dvrqcc2sn0k8y6cb08fazlfhr4922hwv2vbx3cnyy3z";
      };
      witherable = {
        version = "0.4.2";
        hash = "1ga4al351kwcfvsdr1ngyzj4aypvl46w357jflmgxacad8iqx4ik";
      };
    };
  };
  resolving = false;
}
