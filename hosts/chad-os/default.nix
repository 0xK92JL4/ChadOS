{ settings, ... }:
{
  imports = [
    ./disko.nix
    ./hardware-configuration.nix
    ./modules/boot.nix
    ./modules/network.nix
    ./modules/nix.nix
    ./modules/users.nix
  ];

  networking.hostName = settings.hostname;

  system.stateVersion = "25.11";
}
