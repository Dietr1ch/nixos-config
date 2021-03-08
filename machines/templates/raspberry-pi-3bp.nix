# Raspberry Pi 3B+ specific config
#
# https://nixos.wiki/wiki/NixOS_on_ARM/Raspberry_Pi_3

{ config, lib, pkgs, ... }:

{
  # Raspberry Pi - CPU
  # ==================
  nix = {
    maxJobs = lib.mkDefault 4;
    buildCores = 4;
  };


  boot = {
    # Hardware detection
    initrd = {
      availableKernelModules = [
        "usbhid"
      ];
      kernelModules = [
      ];
    };
    kernelModules = [ ];
    extraModulePackages = [ ];

    # Raspberry Pi 3 Boot
    loader = {
      # Use the extlinux boot loader. (NixOS wants to enable GRUB by default)
      grub.enable = false;
      generic-extlinux-compatible.enable = true;

      raspberryPi = {
        enable = true;
        version = 4;

        # Audio Support
        firmwareConfig = ''
          dtparam=audio=on
        '';
      };
    };

    # Mainline doesn't work yet
    kernelPackages = pkgs.linuxPackages_rpi4;

    # ttyAMA0 is the serial console broken out to the GPIO
    kernelParams = [
      "8250.nr_uarts=1" # may be required only when using u-boot
      "console=ttyAMA0,115200"
      "console=tty1"
    ];
  };
  # Required for the Wireless firmware
  hardware.enableRedistributableFirmware = true;

  # Video support (No GPU)
  services.xserver = {
    videoDrivers = [ "fbdev" ];
  };
}

