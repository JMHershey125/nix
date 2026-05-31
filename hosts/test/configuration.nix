# hosts/test/configuration.nix
{ config, pkgs, ... }: {
  imports = [
    # Import the function and pass the host-specific device
    (import ../../modules/disko.nix { 
      device = "/dev/disk/by-id/your-specific-disk-id"; 
    })
  ];

  # Basic system settings
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}