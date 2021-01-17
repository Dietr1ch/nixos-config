{ config, lib, pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;

      extraPackages = [];
      extraPackages32 = [];
    };
  };

  services.xserver.videoDrivers = [
    "nvidia"
  ];
}

