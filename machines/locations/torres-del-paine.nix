{ config, lib, pkgs, ... }:

{
  time.timeZone = "America/Santiago";
  location = {
    # Torres del Paine
    latitude = -50.9482254;
    longitude = -72.9553118;
  };
}

