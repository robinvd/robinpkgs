{ mkDerivation, aeson, base, haskell-lsp, stdenv, text }:
mkDerivation {
  pname = "hie-base";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ aeson base haskell-lsp text ];
  description = "Haskell IDE API base types";
  license = stdenv.lib.licenses.bsd3;
}
