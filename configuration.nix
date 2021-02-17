# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix

      # ./machines/laptop.nix
      # ./machines/workstation.nix
      # ./machines/raspberry-box.nix

      ./env.nix

      ./nixos.nix
      ./security.nix
      ./security-keys.nix

      ./power.nix
      ./networking.nix
      ./sound.nix
      # ./printing.nix

      ./locale.nix
      ./fonts.nix

      ./dvorak.nix

      # ./desktop/login-sddm.nix
      # ./desktop/login-lightdm.nix
      # ./desktop/kodi.nix
      # ./desktop/plasma.nix

      ./groups.nix
      ./users/root.nix
      # ./users/you.nix

      ./services/avahi.nix
      ./services/zerotier.nix
      ./services/xserver.nix
      ./services/ssh.nix
      # ./services/ipfs.nix
      # ./services/monero.nix
      ./services/fstrim.nix
      # ./services/cups.nix
      # ./services/plex.nix  ## x86-only
    ];
}

