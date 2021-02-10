{ config, lib, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;

      libinput = {
        enable = true;

        mouse = {
          accelSpeed = "0.0";

          naturalScrolling = false;
        };

        touchpad = {
          accelSpeed = "0.0";

          tapping = true;
          naturalScrolling = true;
        };
      };
    };
  };
}

