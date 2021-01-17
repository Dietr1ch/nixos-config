{ config, lib, pkgs, ... }:

{
  programs = {
    mosh.enable = true;
  };

  services = {
    openssh = {
      enable = true;
      permitRootLogin = "no";
      passwordAuthentication = false;
      banner = ''
        ${config.networking.hostName}
      '';
      extraConfig = ''
        # Auth
        PasswordAuthentication no
        UsePAM no
        PubkeyAuthentication yes
      '';
    };
  };
}

