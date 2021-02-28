{ config, lib, pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    bluetooth = {
      enable = true;
      settings = {
        General = {
          Enable = "Source,Sink,Media,Socket";
        };
      };
    };
  };
}

