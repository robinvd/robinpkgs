{ mkDerivation, base, hie-plugin-api, stdenv, text }:
mkDerivation {
  pname = "hie-example-plugin2";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base hie-plugin-api text ];
  description = "Haskell IDE example plugin";
  license = stdenv.lib.licenses.bsd3;
}
