{ config, lib, pkgs, ... }:

{
  services = {
    plex = {
      enable = true;
      openFirewall = true;
    };

    xserver = {
      displayManager.sddm = {
        enable = true;

        autoLogin = {
          enable = true;
          user = "plex";
        };
      };

      # desktopManager = {
      #   default = "xsession";
      #   session = [
      #      {
      #        manage = "desktop";
      #        name = "xsession";
      #        # start = ''exec $HOME/.xsession'';
      #        start = ''exec plex'';
      #      }
      #   ];
      # };
    };
  };
}

