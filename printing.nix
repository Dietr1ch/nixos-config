{ config, lib, pkgs, ... }:

{
  # Printing
  # ========
  services = {
    printing = {
      enable = true;

      drivers = with pkgs; [
        gutenprint
        gutenprintBin
      ];
    };
  };

  # Scanners
  # ========
  hardware.sane.enable = true;

  nixpkgs.config.packageOverrides = pkgs: {
    xsaneGimp = pkgs.xsane.override { gimpSupport = true; };
  };
}

