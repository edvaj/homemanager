{ config, pkgs, ...}:
{
  services.wlsunset = {
    enable = true;
    # latitude = 51.0;
    # longitude = 0.0;
    sunrise = "06:30";
    sunset = "20:30";
    temperature = {
      day = 6000;
      night = 4500;
    };
  };
}
