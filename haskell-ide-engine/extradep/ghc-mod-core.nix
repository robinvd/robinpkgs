{ mkDerivation, base, binary, bytestring, Cabal, cabal-helper
, containers, deepseq, directory, djinn-ghc, extra, fclabels
, filepath, fingertree, ghc, ghc-boot, ghc-paths, ghc-syb-utils
, haskell-src-exts, hlint, monad-control, monad-journal, mtl
, old-time, optparse-applicative, pipes, process, safe, semigroups
, split, stdenv, syb, template-haskell, temporary, text, time
, transformers, transformers-base, fetchgit, cabal-doctest
}:
mkDerivation {
  pname = "ghc-mod-core";
  version = "5.9.0.0";
  # src = ./ghc-mod/core;
  src = fetchgit {
    url = https://gitlab.com/alanz/ghc-mod.git;
    rev = "c9b209c08779b2166300dc2ec69d7f5bb2955eb3";
    sha256 = "182ggv5g766nfzlgz5dh6wkficl2rfxpys4dlg9bblwqc1q46asi";
  } + "/core";

  setupHaskellDepends = [
    base Cabal containers directory filepath process template-haskell
    transformers cabal-doctest
  ];
  libraryHaskellDepends = [
    base binary bytestring cabal-helper containers deepseq directory
    djinn-ghc extra fclabels filepath fingertree ghc ghc-boot ghc-paths
    ghc-syb-utils haskell-src-exts hlint monad-control monad-journal
    mtl old-time optparse-applicative pipes process safe semigroups
    split syb template-haskell temporary text time transformers
    transformers-base
  ];
  homepage = "https://github.com/DanielG/ghc-mod";
  description = "Happy Haskell Hacking";
  license = stdenv.lib.licenses.agpl3;
}
