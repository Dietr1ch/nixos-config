{ pkgs, ... }:

{
  services = {
    udev = {
      extraRules = ''

        # Input devices
        # -------------
        # feed:1307 ErgoDox EZ ErgoDox EZ
        ACTION=="add", ATTRS{idVendor}=="feed", ATTRS{idProduct}=="1307", ATTR{power/wakeup}="enabled"
        # 1532:008f Razer USA, Ltd Razer Naga Pro
        ACTION=="add", ATTRS{idVendor}=="1532", ATTRS{idProduct}=="008f", ATTR{power/wakeup}="enabled"

      '';
    };
  };
}
