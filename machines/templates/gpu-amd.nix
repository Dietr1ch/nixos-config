{ config, lib, pkgs, ... }:

{
  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;

      extraPackages = [];
      extraPackages32 = with pkgs; [
        pkgsi686Linux.libva
      ];
    };
  };

  services.xserver.videoDrivers = [
    "amdgpu"
  ];
}

