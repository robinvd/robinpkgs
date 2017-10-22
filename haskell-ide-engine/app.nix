{ mkDerivation, aeson, async, base, bytestring, Cabal, containers
, data-default, Diff, directory, either, filepath, ghc
, ghc-mod-core, gitrev, haskell-lsp, hie-apply-refact, hie-base
, hie-brittany, hie-build-plugin, hie-eg-plugin-async
, hie-example-plugin2, hie-ghc-mod, hie-ghc-tree, hie-haddock
, hie-hare, hie-hoogle, hie-plugin-api, hoogle, hslogger, hspec
, lens, mtl, optparse-simple, QuickCheck, quickcheck-instances
, sorted-list, stdenv, stm, text, time, transformers
, unordered-containers, vector, vinyl, yi-rope
}:
mkDerivation {
  pname = "haskell-ide-engine";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson async base bytestring Cabal containers data-default directory
    either filepath ghc ghc-mod-core gitrev haskell-lsp
    hie-apply-refact hie-base hie-brittany hie-ghc-mod hie-haddock
    hie-hare hie-hoogle hie-plugin-api hslogger lens mtl
    optparse-simple sorted-list stm text unordered-containers vector
    yi-rope
  ];
  executableHaskellDepends = [
    base Cabal containers directory ghc-mod-core gitrev haskell-lsp
    hie-apply-refact hie-build-plugin hie-eg-plugin-async
    hie-example-plugin2 hie-ghc-mod hie-ghc-tree hie-hare hie-hoogle
    hie-plugin-api hslogger optparse-simple stm text time transformers
    unordered-containers vinyl
  ];
  testHaskellDepends = [
    aeson base containers Diff directory filepath ghc-mod-core
    haskell-lsp hie-apply-refact hie-base hie-eg-plugin-async
    hie-example-plugin2 hie-ghc-mod hie-ghc-tree hie-hare hie-hoogle
    hie-plugin-api hoogle hslogger hspec QuickCheck
    quickcheck-instances stm text transformers unordered-containers
    vector vinyl
  ];
  homepage = "http://github.com/githubuser/haskell-ide-engine#readme";
  description = "Provide a common engine to power any Haskell IDE";
  license = stdenv.lib.licenses.bsd3;
}
