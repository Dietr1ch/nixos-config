# Machine-specific settings on top of the hardware-configuration.nix
# generated by ‘nixos-generate-config’.

{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./templates/laptop.nix

      ./locations/torres-del-paine.nix

      ./templates/cpu-intel.nix
      ./templates/gpu-nvidia-prime.nix
      ./templates/bluetooth.nix
      ./templates/steam-hardware.nix

      ./templates/cgroups2.nix
    ];

  networking = {
    hostName = "laptop";
    interfaces = {
      wlp2s0.useDHCP = true;
    };

    # wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  };

  # CPU
  # ===
  nix = {
    maxJobs = lib.mkDefault 8;
    buildCores = 8;
  };
}


