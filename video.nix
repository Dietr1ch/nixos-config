{ config, lib, pkgs, ... }:

{
  # v4l2loopback. https://gist.github.com/TheSirC/93130f70cc280cdcdff89faf8d4e98ab
  boot = {
    extraModulePackages = with lib.unstable; [
      config.boot.kernelPackages.v4l2loopback
    ];
    kernelModules = [
      "v4l2loopback"
    ];
    extraModprobeConfig = ''
      options v4l2loopback exclusive_caps=1 video_nr=9 card_label=loopback_cam
    '';
  };
}
