{ config, lib, pkgs, ... }:

{
  hardware = {
    enableRedistributableFirmware = true;

    bluetooth = {
      enable = true;
      config = {
        General = {
          Enable = "Source,Sink,Media,Socket";
        };
      };
    };

    # Audio
    pulseaudio = {
      enable = true;
      support32Bit = true;

      # # Only the full (non-default) build has Bluetooth support
      package = pkgs.pulseaudioFull.override {
        # Add support for JACK
        jackaudioSupport = true;
      };
      # Pulseaudio only supports the SBC codec. There is out-of-tree support for AAC, APTX, APTX-HD and LDAC.
      extraModules = [
        pkgs.pulseaudio-modules-bt
      ];
    };
  };
}

