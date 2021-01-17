{ config, lib, pkgs, ... }:

{
  networking = {
    networkmanager.enable = true;

    enableIPv6 = true;

    nameservers = [
      # Google IPv4 DNS
      "8.8.8.8"
      "8.8.4.4"
    ];

    useDHCP = false;  # Deprecated. Awaiting removal

    firewall = {
      enable = true;

      allowPing = true;

      # TCP
      allowedTCPPorts = [
        6600   # MPD
        19000  # Netjack
        22000  # Syncthing
      ];
      allowedTCPPortRanges = [
        # Dev
        { from = 3000; to = 3100; }
        { from = 8000; to = 8100; }
        # KDE Connect
        # { from = 1714; to = 1764; }
        # Steam link
        { from = 27036; to = 27037; }
      ];

      # UDP
      allowedUDPPorts = [
        19000  # Netjack
        21027  # Syncthing
      ];
      allowedUDPPortRanges = [
        # Steam link
        { from = 27031; to = 27036; }
        # KDE Connect
        # { from = 1714; to = 1764; }
      ];
    };
  };
}

