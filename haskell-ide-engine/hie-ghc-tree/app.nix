{ mkDerivation, aeson, base, ghc-dump-tree, ghc-mod, ghc-mod-core
, hie-base, hie-plugin-api, stdenv, text
}:
mkDerivation {
  pname = "hie-ghc-tree";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base ghc-dump-tree ghc-mod ghc-mod-core hie-base
    hie-plugin-api text
  ];
  description = "Haskell IDE GHC Tree plugin";
  license = stdenv.lib.licenses.bsd3;
}
