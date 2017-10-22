{system ? builtins.currentSystem}:
let
  pkgs = import <nixpkgs> {inherit system; };
  myCall = pkgs.lib.callPackageWith (pkgs // pkgs.haskellPackages // jobs);

  jobs = pkgs.lib.attrsets.mapAttrs (name: value: pkgs.haskell.lib.dontHaddock (pkgs.haskell.lib.dontCheck value)) {
    hie-apply-refact = myCall ./hie-apply-refact/app.nix {};
    hie-base = myCall ./hie-base/app.nix {};
    hie-brittany = myCall ./hie-brittany/app.nix {};
    hie-build-plugin = myCall ./hie-build-plugin/app.nix {};
    hie-eg-plugin-async = myCall ./hie-eg-plugin-async/app.nix {};
    hie-example-plugin2 = myCall ./hie-example-plugin2/app.nix {};
    hie-ghc-mod = myCall ./hie-ghc-mod/app.nix {};
    hie-ghc-tree = myCall ./hie-ghc-tree/app.nix {};
    hie-haddock = myCall ./hie-haddock/app.nix {};
    hie-hare = myCall ./hie-hare/app.nix {};
    hie-hoogle = myCall ./hie-hoogle/app.nix {};
    hie-plugin-api = myCall ./hie-plugin-api/app.nix {};
    haskell-ide-engine = myCall ./app.nix {};

    brittany = myCall ./extradep/brittany.nix {};
    cabal-helper = myCall ./extradep/cabal-helper.nix {};
    ghc-dump-tree = myCall ./extradep/ghc-dump-tree.nix {};
    ghc-mod = myCall ./extradep/ghc-mod.nix {};
    # ghc-mod = pkgs.haskellPackages.ghc-mod; # myCall ./extradep/ghc-mod/app.nix {};
    ghc-mod-core =  myCall ./extradep/ghc-mod-core.nix {};
    # ghc-mod-core = pkgs.haskellPackages.ghc-mod; # myCall ./extradep/ghc-mod/coreapp.nix {};
    HaRe = myCall ./extradep/HaRe.nix {};
    haskell-lsp = myCall ./extradep/haskell-lsp.nix {};

    # dont build in nixpkgs
    monad-memo = myCall ./extradep/monad-memo.nix {};
  };
in
  jobs.haskell-ide-engine
