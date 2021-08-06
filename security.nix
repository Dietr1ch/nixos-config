{ config, lib, pkgs, ... }:

{
  # Rules for mounting TrueRNG. https://ubld.it/truerng_v3
  environment = {
    systemPackages = with pkgs; [
      coreutils
    ];
  };
  services.udev.extraRules = ''
    SUBSYSTEM=="tty", ATTRS{product}=="TrueRNG", SYMLINK+="TrueRNG", RUN+="${pkgs.coreutils}/bin/stty raw -echo -ixoff -F /dev/%k speed 3000000"
    ATTRS{idVendor}=="04d8", ATTRS{idProduct}=="f5fe", ENV{ID_MM_DEVICE_IGNORE}="1"
  '';

  security = {
    # Resource limits
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
