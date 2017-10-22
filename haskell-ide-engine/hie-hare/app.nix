{ mkDerivation, aeson, base, containers, Diff, either, ghc
, ghc-exactprint, ghc-mod, ghc-mod-core, HaRe, haskell-lsp
, hie-base, hie-ghc-mod, hie-plugin-api, lens, monad-control, mtl
, stdenv, text
}:
mkDerivation {
  pname = "hie-hare";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base containers Diff either ghc ghc-exactprint ghc-mod
    ghc-mod-core HaRe haskell-lsp hie-base hie-ghc-mod hie-plugin-api
    lens monad-control mtl text
  ];
  description = "Haskell IDE HaRe plugin";
  license = stdenv.lib.licenses.bsd3;
}
