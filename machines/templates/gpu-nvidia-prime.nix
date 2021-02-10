{ config, lib, pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    nvidia.prime = {
      enable = true;

      offload.enable = true;

      # FIXME: Add your own machine-specific PCI Bus IDs
      # Bus ID of the NVIDIA GPU. You can find it using lspci, either under 3D or VGA
      # nvidiaBusId = "PCI:1:2:3";
      # Bus ID of the Intel GPU. You can find it using lspci, either under 3D or VGA
      # intelBusId = "PCI:4:5:6";
    };

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

