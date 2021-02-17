{ config, lib, pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    bluetooth = {
      enable = true;
      config = {
        General = {
          Enable = "Source,Sink,Media,Socket";
        };
      };
    };
  };
}

