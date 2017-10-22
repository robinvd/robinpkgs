{ mkDerivation, aeson, base, directory, filepath, ghc-mod
, ghc-mod-core, hie-plugin-api, hoogle, stdenv, tagsoup, text
}:
mkDerivation {
  pname = "hie-hoogle";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base directory filepath ghc-mod ghc-mod-core hie-plugin-api
    hoogle tagsoup text
  ];
  description = "Haskell IDE Hoogle plugin";
  license = stdenv.lib.licenses.bsd3;
}
