{ config, lib, pkgs, ... }:

{
  services = {
    ipfs = {
      enable = true;

      autoMount = true;
    };
  };
}
