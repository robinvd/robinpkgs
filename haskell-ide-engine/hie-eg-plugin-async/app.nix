{ mkDerivation, base, ghc-mod-core, hie-plugin-api, stdenv, stm
, text
}:
mkDerivation {
  pname = "hie-eg-plugin-async";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base ghc-mod-core hie-plugin-api stm text
  ];
  description = "Haskell IDE example plugin, using async processes";
  license = stdenv.lib.licenses.bsd3;
}
