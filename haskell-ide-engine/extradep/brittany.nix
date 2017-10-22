{ mkDerivation, aeson, base, butcher, bytestring, cmdargs
, containers, czipwith, data-tree-print, deepseq, directory, either
, extra, filepath, ghc, ghc-boot-th, ghc-exactprint, ghc-paths
, hspec, monad-memo, mtl, multistate, neat-interpolation, parsec
, pretty, safe, semigroups, stdenv, strict, syb, text, transformers
, uniplate, unsafe, yaml, fetchgit
}:
mkDerivation {
  pname = "brittany";
  version = "0.8.0.3";
  src = fetchgit {
    url = https://gitlab.com/alanz/brittany.git;
    rev = "32a193f0ce02ec36a6032852454db96573ab3a60";
    sha256 = "0hnvzfgqpx9kr252iq1iwd8kchrf3lgiijp94m751l7zckkd352r";
  };
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base butcher bytestring cmdargs containers czipwith
    data-tree-print deepseq directory either extra ghc ghc-boot-th
    ghc-exactprint ghc-paths monad-memo mtl multistate
    neat-interpolation pretty safe semigroups strict syb text
    transformers uniplate unsafe yaml
  ];
  executableHaskellDepends = [
    aeson base butcher bytestring cmdargs containers czipwith
    data-tree-print deepseq directory either extra filepath ghc
    ghc-boot-th ghc-exactprint ghc-paths hspec monad-memo mtl
    multistate neat-interpolation pretty safe semigroups strict syb
    text transformers uniplate unsafe yaml
  ];
  testHaskellDepends = [
    aeson base butcher bytestring cmdargs containers czipwith
    data-tree-print deepseq directory either extra ghc ghc-boot-th
    ghc-exactprint ghc-paths hspec monad-memo mtl multistate
    neat-interpolation parsec pretty safe semigroups strict syb text
    transformers uniplate unsafe yaml
  ];
  homepage = "https://github.com/lspitzner/brittany/";
  description = "Haskell source code formatter";
  license = stdenv.lib.licenses.agpl3;
}
