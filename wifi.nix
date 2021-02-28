{ config, lib, pkgs, ... }:

{
  networking.wireless.networks = {
    # "aoeu" = {
    #   hidden = true;
    #   priority = 0;

    #   # Get this with `wpa_passphrase 'aoeu'`
    #   pskRaw = "7d959d308318cf7457c343e50df3b0e17642907844e81edc2200385f23b45033";
    # };
  };
}

