{ config, lib, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;

      libinput = {
        # Enable touchpad support (enabled default in most desktopManager).
        enable = true;

        accelSpeed = "0.0";

        naturalScrolling = true;
        tapping = true;
      };
    };
  };
}

