{ config, lib, pkgs, ... }:

{
  services = {
    ipfs = {
      enable = true;

      autoMount = true;
      startWhenNeeded = true;
      enableGC = true;
    };
  };
}
