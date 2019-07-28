let pkgs = import ./nix/nixpkgs.nix {}; in
rec {
    granite = pkgs.callPackage ./granite.nix {};
}
