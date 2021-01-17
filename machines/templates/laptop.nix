{ config, lib, pkgs, ... }:

{
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
