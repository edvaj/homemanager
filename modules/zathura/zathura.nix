{ config, pkgs, ... }:
{
  programs.zathura = {
    enable = true;
    options = {
      default-bg = "#000000";
    };
    extraConfig = "
      set selection-clipboard clipboard
    ";
  };
}
