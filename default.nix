{system ? builtins.currentSystem}:
let
  pkgs = import <nixpkgs> {inherit system; };
  myCall = pkgs.lib.callPackageWith (pkgs // pkgs.haskellPackages // jobs);

  jobs = pkgs.lib.attrsets.mapAttrs (name: value: pkgs.haskell.lib.dontHaddock (pkgs.haskell.lib.dontCheck value)) {
    # hie and related
    hie-apply-refact = myCall ./haskell-ide-engine/hie-apply-refact/app.nix {};
    hie-base = myCall ./haskell-ide-engine/hie-base/app.nix {};
    hie-brittany = myCall ./haskell-ide-engine/hie-brittany/app.nix {};
    hie-build-plugin = myCall ./haskell-ide-engine/hie-build-plugin/app.nix {};
    hie-eg-plugin-async = myCall ./haskell-ide-engine/hie-eg-plugin-async/app.nix {};
    hie-example-plugin2 = myCall ./haskell-ide-engine/hie-example-plugin2/app.nix {};
    hie-ghc-mod = myCall ./haskell-ide-engine/hie-ghc-mod/app.nix {};
    hie-ghc-tree = myCall ./haskell-ide-engine/hie-ghc-tree/app.nix {};
    hie-haddock = myCall ./haskell-ide-engine/hie-haddock/app.nix {};
    hie-hare = myCall ./haskell-ide-engine/hie-hare/app.nix {};
    hie-hoogle = myCall ./haskell-ide-engine/hie-hoogle/app.nix {};
    hie-plugin-api = myCall ./haskell-ide-engine/hie-plugin-api/app.nix {};
    haskell-ide-engine = myCall ./haskell-ide-engine/app.nix {};

    brittany = myCall ./haskell-ide-engine/extradep/brittany.nix {};
    cabal-helper = myCall ./haskell-ide-engine/extradep/cabal-helper.nix {};
    ghc-dump-tree = myCall ./haskell-ide-engine/extradep/ghc-dump-tree.nix {};
    ghc-mod = myCall ./haskell-ide-engine/extradep/ghc-mod.nix {};
    # ghc-mod = pkgs./haskellPackages.ghc-mod; # myCall ./extradep/ghc-mod/app.nix {};
    ghc-mod-core =  myCall ./haskell-ide-engine/extradep/ghc-mod-core.nix {};
    # ghc-mod-core = pkgs./haskellPackages.ghc-mod; # myCall ./extradep/ghc-mod/coreapp.nix {};
    HaRe = myCall ./haskell-ide-engine/extradep/HaRe.nix {};
    haskell-lsp = myCall ./haskell-ide-engine/extradep/haskell-lsp.nix {};

    monad-memo = pkgs.haskellPackages.monad-memo;

    # other pkgs
    halive = pkgs.haskellPackages.halive;
    twitch-cli = myCall ./twitch-cli.nix {};

  };
in
  jobs
