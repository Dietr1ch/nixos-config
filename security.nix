{ config, lib, pkgs, ... }:

{
  security = {
    hideProcessInformation = false;

    pam.loginLimits = [
      # memlock
      {
        domain = "*";
        type = "soft";
        item = "memlock";
        value = "4096";
      }
      {
        domain = "*";
        type = "hard";
        item = "memlock";
        value = "65536";
      }
      # nproc
      {
        domain = "*";
        type = "soft";
        item = "nproc";
        value = "4096";
      }
      {
        domain = "*";
        type = "hard";
        item = "nproc";
        value = "16384";
      }
    ];
  };
}
