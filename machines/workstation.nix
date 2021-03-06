# Machine-specific settings on top of the hardware-configuration.nix
# generated by ‘nixos-generate-config’.

{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./templates/workstation.nix

      ./locations/torres-del-paine.nix

      ./templates/cpu-amd.nix
      ./templates/gpu-amd.nix
      ./templates/bluetooth.nix
      ./templates/steam-hardware.nix

      ./templates/cgroups2.nix
    ];

  networking = {
    hostName = "workstation";
    interfaces = {
      eth0.useDHCP = true;
    };
  };

  # CPU
  # ===
  nix = {
    maxJobs = lib.mkDefault 32;
    buildCores = 32;
  };
}

