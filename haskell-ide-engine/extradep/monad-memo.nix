{ mkDerivation, array, base, containers, criterion, mtl, primitive
, QuickCheck, random, stdenv, test-framework
, test-framework-quickcheck2, transformers, vector
}:
mkDerivation {
  pname = "monad-memo";
  version = "0.4.1";
  src = fetchgit {
    url = 
    rev = "e325975450ce89d790ed3f92de3ef675967d9538";
    sha256 = "0z7r3l4j5a1brz7zb2rgd985m58rs0ki2p59y1l9i46fcy8r9y4g";
  };
  libraryHaskellDepends = [
    array base containers mtl primitive transformers vector
  ];
  testHaskellDepends = [
    array base containers mtl primitive QuickCheck random
    test-framework test-framework-quickcheck2 transformers vector
  ];
  benchmarkHaskellDepends = [
    array base containers criterion mtl primitive transformers vector
  ];
  homepage = "https://github.com/EduardSergeev/monad-memo";
  description = "Memoization monad transformer";
  license = stdenv.lib.licenses.bsd3;
}
