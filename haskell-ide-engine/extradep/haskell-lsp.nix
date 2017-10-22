{ mkDerivation, aeson, base, bytestring, containers, data-default
, directory, filepath, hashable, hslogger, hspec, lens, mtl, parsec
, sorted-list, stdenv, stm, text, time, transformers
, unordered-containers, vector, yi-rope, fetchgit
}:
mkDerivation {
  pname = "haskell-lsp";
  version = "0.1.0.0";
  src = fetchgit {
    url = https://gitlab.com/alanz/haskell-lsp.git;
    rev = "beeab9fc8a98dee87ee7291e7191dee762d90b6d";
    sha256 = "1mcpvvc493bq85pfa3gqf4kbg2zfa70k4189zzc01ngdjs90rixw";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring containers data-default directory filepath
    hashable hslogger lens mtl parsec sorted-list stm text time
    unordered-containers yi-rope
  ];
  executableHaskellDepends = [
    aeson base bytestring containers data-default directory filepath
    hslogger lens mtl parsec stm text time transformers
    unordered-containers vector yi-rope
  ];
  testHaskellDepends = [
    aeson base containers directory hashable hspec lens sorted-list
    text yi-rope
  ];
  homepage = "https://github.com/alanz/haskell-lsp";
  description = "Haskell library for the Microsoft Language Server Protocol";
  license = stdenv.lib.licenses.mit;
}
