{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "waybar"
      "swww-daemon"
      "nm-applet --indicator"
      "blueman-applet"
    ];
  };
}
