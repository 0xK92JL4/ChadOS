{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, disko, ... }:
    let
      mkHost = name: nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs.settings = import ./hosts/${name}/settings.nix // { hostname = name; };
        modules = [
          disko.nixosModules.disko
          ./hosts/${name}
        ];
      };
    in {
      nixosConfigurations.chad-os = mkHost "chad-os";
    };
}
