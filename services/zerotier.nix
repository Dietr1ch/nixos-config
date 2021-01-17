{ config, lib, pkgs, ... }:

{
  services = {
    zerotierone = {
      enable = true;
      joinNetworks = [
        # "0123456789abcdef0"  # your-network
      ];
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
  };
}
