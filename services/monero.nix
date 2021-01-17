{ config, lib, pkgs, ... }:

{
  services = {
    monero = {
      enable = true;

      limits = {
        threads = 4;

        upload   = 5;  # 5kb/s
        download = 5;  # 5kb/s
      };
    };
  };
}
