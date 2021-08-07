{ config, lib, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;

      displayManager = {
        defaultSession = "plasma5";
      };

      desktopManager.plasma5.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    plasma-pa
    plasma-nm

    cryptsetup
    plasma-vault
  ];

  networking = {
    firewall = {
      # TCP
      allowedTCPPortRanges = [
        # KDE Connect
        { from = 1714; to = 1764; }
      ];

      # UDP
      allowedUDPPortRanges = [
        # KDE Connect
        { from = 1714; to = 1764; }
      ];
    };
  };
}

