{ mkDerivation, base, data-default, fetchgit, optparse-applicative
, process, stdenv, twitch
}:
mkDerivation {
  pname = "twitch-cli";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/grafted-in/twitch-cli";
    sha256 = "1mcah0fbfdznsqssipi8yc5nqpvyv35rfqn2ix56b5ifh5wd30g2";
    rev = "2fdc91526815316aa8a9ae3a1bbcd702ba2dfb94";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base data-default optparse-applicative process twitch
  ];
  homepage = "https://github.com/grafted-in/twitch-cli";
  description = "CLI to watch file patterns and run commands when they change";
  license = stdenv.lib.licenses.bsd3;
}
