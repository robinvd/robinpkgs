{ mkDerivation, aeson, base, containers, Diff, directory, either
, filepath, fingertree, ghc, ghc-mod-core, haskell-lsp, hie-base
, hslogger, lifted-base, monad-control, mtl, stdenv, syb, text
, time, transformers, unordered-containers
}:
mkDerivation {
  pname = "hie-plugin-api";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base containers Diff directory either filepath fingertree ghc
    ghc-mod-core haskell-lsp hie-base hslogger lifted-base
    monad-control mtl syb text time transformers unordered-containers
  ];
  description = "Haskell IDE API for plugin communication";
  license = stdenv.lib.licenses.bsd3;
}
