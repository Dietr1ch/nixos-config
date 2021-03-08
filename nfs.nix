{ config, lib, pkgs, ... }:

{
  fileSystems = {
    # "/nfs/Data" = {
    #   device = "server.local:/Data";
    #   fsType = "nfs";
    #   options = [
    #     "user"

    #     "ro"

    #     # Lazy
    #     "noauto"
    #     "x-systemd.automount"

    #     "x-systemd.device-timeout=175"
    #     "timeo=15"
    #     # Auto-disconnect
    #     "x-systemd.idle-timeout=5min"
    #   ];
    # };
  };

  # Temporary workaround to user mounts
  security.wrappers = {
    "mount.nfs".source = "${pkgs.nfs-utils.out}/bin/mount.nfs";
  };
}

