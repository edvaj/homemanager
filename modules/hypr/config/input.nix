{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    input = {
      accel_profile = "adaptive";
      sensitivity = 0;
      touchpad = {
        natural_scroll = true;
        clickfinger_behavior = true;
        tap-to-click = true;
        disable_while_typing = false;
      };
    };
    cursor = {
      hide_on_key_press = true;
    };
  };
}
