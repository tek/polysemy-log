{
  bounds = {
    polysemy-log = {
      ansi-terminal = {
        lower = "1.0";
        upper = "1.2";
      };
      async = {
        lower = "2.2.4";
        upper = "2.3";
      };
      base = {
        lower = "4.17.2.1";
        upper = "4.21";
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
        upper = "1.6";
      };
      time = {
        lower = "1.12.2";
        upper = "1.13";
      };
    };
    polysemy-log-co = {
      base = {
        lower = "4.17.2.1";
        upper = "4.21";
      };
      co-log = {
        lower = "0.6.0.0";
        upper = "0.7";
      };
      co-log-concurrent = {
        lower = "0.5.1.0";
        upper = "0.6";
      };
      co-log-polysemy = {
        lower = "0.0.1.3";
        upper = "0.1";
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
        upper = "1.6";
      };
    };
    polysemy-log-di = {
      base = {
        lower = "4.17.2.1";
        upper = "4.21";
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
        upper = "1.6";
      };
    };
  };
  versions = {
    latest = {
      ansi-terminal = "1.1.2";
      async = "2.2.5";
      base = "4.20.0.0";
      co-log = "0.6.1.2";
      co-log-concurrent = "0.5.1.0";
      co-log-polysemy = "0.0.1.6";
      di-polysemy = "0.2.0.0";
      incipit-core = "0.6.1.0";
      polysemy = "1.9.2.0";
      polysemy-conc = "0.14.1.1";
      polysemy-plugin = "0.4.5.3";
      polysemy-test = "0.10.0.1";
      polysemy-time = "0.7.0.1";
      stm = "2.5.3.1";
      tasty = "1.5.3";
      time = "1.12.2";
    };
    lower = {
      ansi-terminal = "1.0";
      async = "2.2.4";
      base = "4.17.2.1";
      co-log = "0.6.0.0";
      co-log-concurrent = "0.5.1.0";
      co-log-polysemy = "0.0.1.3";
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
      ansi-terminal = {
        version = "1.1.2";
        hash = "1jpim6z8a074h427ah2yqbkm0krcy9yq28276fcdrxm6ji8pa302";
      };
      ansi-terminal-types = {
        version = "1.1";
        hash = "06q2ygb33a3kv8z0xk75dyc2a32si82yc8126dz97xq03pinym8h";
      };
      cabal-doctest = {
        version = "1.0.11";
        hash = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
      };
      co-log = {
        version = "0.6.1.2";
        hash = "1q8d7ggwgpgqpkb6k0g967ld2sx8q3ad44iiv3f15rzqk7zwmnnx";
      };
      co-log-polysemy = {
        version = "0.0.1.6";
        hash = "1rkzc02qv1nj1af1vjp4a8b16dpr3vc6wlwd03pw9xx23syjb6lq";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      hedgehog = {
        version = "1.5";
        hash = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
      };
      incipit-base = {
        version = "0.6.1.0";
        hash = "0iyyvxpyyybn5ygr875pav6g5hbs00wa9jbr7qslszqpkfpy5x33";
      };
      incipit-core = {
        version = "0.6.1.0";
        hash = "144c239nxl8zi2ik3ycic3901gxn8rccij3g609n2zgnn3b6zilj";
      };
      optparse-applicative = {
        version = "0.18.1.0";
        hash = "0wggvi67lm2amw0igmpfqs75jvy91zv42v33c12vmk9fdqkwalmg";
      };
      polysemy-conc = {
        version = "0.14.1.1";
        hash = "1xli6ja9f7qx2k9956lw4h9y5ywdglhgw769afxw9d4w9avclx28";
      };
      polysemy-plugin = {
        version = "0.4.5.3";
        hash = "1c2agk21jj7fwdj6xkagq0prvxknp3zr6q1f480wizssibcvm7y6";
      };
      polysemy-resume = {
        version = "0.9.0.0";
        hash = "1achlwdkycbgjlcdkq641r481m1bl9rb7fklbwfb9nnb6xmqyzms";
      };
      polysemy-test = {
        version = "0.10.0.1";
        hash = "1sp9iag1brknmdy0qvmgnmynwc4gbg1jy21w584x1m2hpqi25p6j";
      };
      polysemy-time = {
        version = "0.7.0.1";
        hash = "0cw39gvmr9rgh3hc0gd55wimm4lxzw9nyrczixk42nw170bpls40";
      };
      prettyprinter-ansi-terminal = {
        version = "1.1.3";
        hash = "09m8knzfvms12576pp2nrdn7j0wikylwjfr9r3z4swgipz1r3nki";
      };
      tasty = {
        version = "1.5.3";
        hash = "1xjlmgsww34asjl9rcwbziw5l4qqbvi5l4b7qvzf4dc7hqkpq1rs";
      };
      tasty-hedgehog = {
        version = "1.4.0.2";
        hash = "04kg2qdnsqzzmj3xggy2jcgidlp21lsjkz4sfnbq7b1yhrv2vbbc";
      };
    };
    lower = {
      aeson = {
        version = "2.1.2.1";
        hash = "1f1f6h2r60ghz4p1ddi6wnq6z3i07j60sgm77hx2rvmncz4vizp0";
      };
      ansi-terminal = {
        version = "1.0";
        hash = "0fzywk11lkwqlf6v6qc845i6qjj3hqb3y5hdnk2fbpq7fdx5svvy";
      };
      async = {
        version = "2.2.4";
        hash = "0wjyyqvlvvq75ywpr86myib34z29k7i32rnwcqpwfi0d3p7nx055";
      };
      bifunctors = {
        version = "5.6.2";
        hash = "1g0z6q5z04zgp7kaf917nrj2iiz1lsqh8ji5ny5ly534zr9zya2m";
      };
      bytebuild = {
        version = "0.3.16.3";
        hash = "1qka0dr6g534vi8p3iwlshdi1iklhgaajg9fbbzvkg49pzj1sak7";
      };
      cabal-doctest = {
        version = "1.0.11";
        hash = "152rqpicqpvigjpy4rf1kjlwny1c7ys1r0r123wdjafvv1igflii";
      };
      chronos = {
        version = "1.1.6.2";
        hash = "1pbfp25py682d17visa4i9rjxmiim8aykrgs7nv2q9anajv88kdx";
      };
      clock = {
        version = "0.8.4";
        hash = "14gy1a16l5s70pyqlsmylxsiiagas2yflqmjjmrdbzj4g1zxy39r";
      };
      co-log = {
        version = "0.6.0.0";
        hash = "0q1ivyv7v0rxvvfgawqj4xs4sw4ip9bk6hwvk5h9gjhhh6z9mmjl";
      };
      co-log-polysemy = {
        version = "0.0.1.3";
        hash = "19p8igm32p030nlpan4pi4yab7w7wzzyqc12pvgysfl4jpi5v60h";
      };
      concurrent-output = {
        version = "1.10.21";
        hash = "1w87rrf337s8wc4z3dkh2mk990003jsk18ry5yawv4465k4yvamw";
      };
      di-polysemy = {
        version = "0.2.0.0";
        hash = "1c6c4qx6ljx1ac10qic1fhrj282cs7cdx2q28lr5xhk73r5vabvf";
      };
      haskell-src-meta = {
        version = "0.8.15";
        hash = "0ccwgfkb1n31wwfysdhc1mqpcnnxnczwmz3d4avm9yn9a5m1nh4s";
      };
      hedgehog = {
        version = "1.5";
        hash = "1hz8xrg5p6vplvcj8c7pgidqnwqjmqahs9dla50nqpbcbdh932ll";
      };
      incipit-base = {
        version = "0.4.1.0";
        hash = "17579j3hzsh3ic0272h8ly8k7gz4zm1hv5jqimdam9gcq8alahkl";
      };
      incipit-core = {
        version = "0.4.1.0";
        hash = "1fm6bf1w8mvpa9qlgxqv3ngf0lyb3057cwv5ajibgbljjaznxpxc";
      };
      lifted-async = {
        version = "0.10.2.7";
        hash = "0cgzs8sfr3l7ah5nnscpp50v5mmvc4hqf02zdi4h344dbbha10fy";
      };
      markdown-unlit = {
        version = "0.6.0";
        hash = "1azz5kcgk2qi1z17q6iqbcd3fdwamwgllig1c20s4z5lzqwydhbp";
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
      th-expand-syns = {
        version = "0.4.12.0";
        hash = "05p82h3hb7ayidc98qq2bgj790d7km9ixp5ijgc1qqkksg3php6z";
      };
      th-lift = {
        version = "0.8.4";
        hash = "0rp32lkvx22alxc7c1mxgf224jyanfy93ry70zwdn6zzj50mnbhc";
      };
      th-orphans = {
        version = "0.13.16";
        hash = "1ih88wwgrxmj04awk0693pjhi19grhh33c6ckc0gckvkisp5lyb5";
      };
      th-reify-many = {
        version = "0.1.10";
        hash = "0g9axz1iszl02cxvy2zgmzinjvz8pbsfq3lzhspshlw5bgcsld39";
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
    };
  };
  resolving = false;
}
