{ mkDerivation, base, binary, bytestring, Cabal, cabal-doctest
, cabal-helper, containers, deepseq, directory, djinn-ghc, doctest
, extra, fclabels, filepath, ghc, ghc-boot, ghc-mod-core, ghc-paths
, ghc-syb-utils, haskell-src-exts, hlint, hspec, monad-control
, monad-journal, mtl, old-time, optparse-applicative, pipes
, process, safe, semigroups, split, stdenv, syb
, template-haskell, temporary, text, time, transformers
, transformers-base, fetchgit
}:
mkDerivation {
  pname = "ghc-mod";
  version = "5.9.0.0";
  src = fetchgit {
    url = https://gitlab.com/alanz/ghc-mod.git;
    rev = "c9b209c08779b2166300dc2ec69d7f5bb2955eb3";
    sha256 = "182ggv5g766nfzlgz5dh6wkficl2rfxpys4dlg9bblwqc1q46asi";
  };
  isLibrary = true;
  isExecutable = true;
  setupHaskellDepends = [
    base Cabal cabal-doctest containers directory filepath process
    template-haskell transformers
  ];
  libraryHaskellDepends = [
    base binary bytestring cabal-helper containers deepseq directory
    djinn-ghc extra fclabels filepath ghc ghc-boot ghc-mod-core
    ghc-paths ghc-syb-utils haskell-src-exts hlint monad-control
    monad-journal mtl old-time optparse-applicative pipes process safe
    semigroups split syb template-haskell temporary text time
    transformers transformers-base
  ];
  executableHaskellDepends = [
    base binary deepseq directory fclabels filepath ghc ghc-mod-core
    monad-control mtl old-time optparse-applicative process semigroups
    split time
  ];
  testHaskellDepends = [
    base cabal-helper containers directory doctest fclabels filepath
    ghc ghc-boot ghc-mod-core hspec monad-journal mtl process split
    temporary transformers
  ];
  # testToolDepends = [ shelltest ];
  homepage = "https://github.com/DanielG/ghc-mod";
  description = "Happy Haskell Hacking";
  license = stdenv.lib.licenses.agpl3;
}
