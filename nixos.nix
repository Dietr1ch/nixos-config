{ config, lib, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
  };

  nix = {
    # Build
    # -----
    # maxJobs = "auto";
    # buildCores = 0;
    # nrBuildUsers = 8;
    # daemonIONiceLevel = 10;
    # daemonNiceLevel = 10;

    # Store
    # -----
    settings = {
      auto-optimise-store = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 8d";
    };

    # Flakes
    # ------
    # https://nixos.wiki/wiki/Flakes
    package = pkgs.nixFlakes;
    extraOptions = ''
      experimental-features = nix-command flakes
    '';
  };

  system = {
    autoUpgrade.enable = true;

    # This value determines the NixOS release from which the default
    # settings for stateful data, like file locations and database versions
    # on your system were taken. It‘s perfectly fine and recommended to leave
    # this value at the release version of the first install of this system.
    # Before changing this value read the documentation for this option
    # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
    stateVersion = "21.03"; # Did you read the comment?
  };
}

