{ config, lib, pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    cpu.amd.updateMicrocode = true;
  };
}

