{ mkDerivation, aeson, apply-refact, base, either, extra, ghc-mod
, ghc-mod-core, haskell-src-exts, hie-base, hie-plugin-api, hlint
, stdenv, text
}:
mkDerivation {
  pname = "hie-apply-refact";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson apply-refact base either extra ghc-mod ghc-mod-core
    haskell-src-exts hie-base hie-plugin-api hlint text
  ];
  description = "Haskell IDE Apply Refact plugin";
  license = stdenv.lib.licenses.bsd3;
}
