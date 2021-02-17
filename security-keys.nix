{ pkgs, ... }:

# https://nixos.wiki/wiki/Yubikey
# https://github.com/drduh/YubiKey-Guide

{
  services = {
    pcscd.enable = true;
    udev = {
      packages = with pkgs; [
        yubikey-personalization
      ];
    };
  };

  environment = {
    systemPackages = with pkgs; [
      yubikey-personalization
      gnupg
      pinentry-curses
      pinentry-qt
      paperkey
      wget
    ];
  };
}

