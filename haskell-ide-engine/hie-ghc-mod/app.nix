{ mkDerivation, aeson, base, containers, ghc, ghc-mod, ghc-mod-core
, hie-base, hie-plugin-api, stdenv, text, transformers
}:
mkDerivation {
  pname = "hie-ghc-mod";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base containers ghc ghc-mod ghc-mod-core hie-base
    hie-plugin-api text transformers
  ];
  description = "Haskell IDE ghc-mod plugin";
  license = stdenv.lib.licenses.bsd3;
}
