{ config, lib, pkgs, ... }:

{
  services = {
    avahi = {
      enable = true;

      ipv4 = true;
      ipv6 = true;

      nssmdns = true;
      openFirewall = true;

      publish = {
        enable = true;

        addresses = true ;
        workstation = true ;
        userServices = true ;
        # hinfo = true ;
      };
    };
  };
}

