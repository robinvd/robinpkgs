{ mkDerivation, aeson, base, bytestring, Cabal, cabal-helper
, containers, directory, filepath, haskell-lsp, hie-plugin-api
, process, stdenv, stm, text, transformers, yaml
}:
mkDerivation {
  pname = "hie-build-plugin";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    aeson base bytestring Cabal cabal-helper containers directory
    filepath haskell-lsp hie-plugin-api process stm text transformers
    yaml
  ];
  description = "Haskell IDE build plugin";
  license = stdenv.lib.licenses.bsd3;
}
