# Fonts

{ config, lib, pkgs, ... }:

{
  console = {
    font = "Lat2-Terminus16";
  };

  fonts = {
    fontDir.enable = true;
    enableGhostscriptFonts = true;

    fonts = with pkgs; [
      # corefonts
      inconsolata
      dejavu_fonts
      noto-fonts
      noto-fonts-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts
      dina-font
      proggyfonts
      terminus_font
    ];
  };
}

