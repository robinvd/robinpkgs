{ mkDerivation, base, bytestring, Cabal, cabal-install, directory
, exceptions, filepath, ghc-prim, mtl, process, semigroupoids
, stdenv, template-haskell, temporary, transformers, unix
, utf8-string, fetchgit
}:
mkDerivation {
  pname = "cabal-helper";
  version = "0.8.0.0";
  src = fetchgit {
    url = https://gitlab.com/alanz/cabal-helper.git;
    rev = "b942cc8be07da5438d70008f79d9828bc05c1482";
    sha256 = "1mx65w23kxsd13y4g1hrnjscc3q8qn9vg3yd56b64h9c0j89vizf";
  };

  isLibrary = true;
  isExecutable = true;
  setupHaskellDepends = [ base Cabal directory filepath ];
  libraryHaskellDepends = [
    base Cabal directory filepath ghc-prim mtl process semigroupoids
    transformers unix
  ];
  executableHaskellDepends = [
    base bytestring Cabal directory exceptions filepath ghc-prim mtl
    process template-haskell temporary transformers unix utf8-string
  ];
  testHaskellDepends = [
    base bytestring Cabal directory exceptions filepath ghc-prim mtl
    process template-haskell temporary transformers unix utf8-string
  ];
  testToolDepends = [ cabal-install ];
  doCheck = false;
  description = "Simple interface to some of Cabal's configuration state, mainly used by ghc-mod";
  license = stdenv.lib.licenses.agpl3;
}
