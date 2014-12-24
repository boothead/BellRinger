let
  pkgs = import <nixpkgs> {};
  node = pkgs.nodePackages;
  haskellPackages = pkgs.haskellPackages_ghcjs.override {
    extension = self: super: {
      mvc = self.callPackage ./mvc.nix {};
      mvcUpdates = self.callPackage ./mvc-updates.nix {};
      chatExample = self.callPackage ./chat-example {};
      oHm = self.callPackage ./oHm {};
    };
  };
in pkgs.callPackage ./. {
     inherit (haskellPackages) ghc oHm lens pipes pipesConcurrency ghcjsDom mvc profunctors;
     inherit (node) npm browserify;
     inherit (pkgs) closurecompiler;
   }
