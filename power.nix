{ config, lib, pkgs, ... }:

{
  powerManagement = {
    enable = true;

    powertop.enable = true;
  };

  services = {
    acpid.enable = true;
    thermald.enable = true;
  };
}

