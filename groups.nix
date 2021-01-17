{ config, lib, pkgs, ... }:

{
  users.groups = {
    # Users with physical access
    "phys" = {
      gid = 660;
    };

    # TODO: Add %phys into %networkmanager
  };
}

