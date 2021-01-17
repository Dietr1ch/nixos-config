{ config, lib, pkgs, ... }:

{
  users.users.kodi = {
    home = "/home/kodi";
    description = "Kodi";
    isNormalUser = false;

    shell = pkgs.fish;
  };

  services = {
    xserver = {
      displayManager = {
        autoLogin = {
          enable = true;
          user = "kodi";
        };
      };

      desktopManager.kodi.enable = true;
    };
  };
}

