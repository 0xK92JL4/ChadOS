{
  boot.loader = {
    systemd-boot = {
      enable = true;
      editor = false;
    };
    system.nixos.distroName = "ChadOS";
    efi.canTouchEfiVariables = true;
    timeout = 3;
  };
}
