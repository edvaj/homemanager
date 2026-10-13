{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
      "awww-daemon"
      "nm-applet --indicator"
    ];
  };
}
