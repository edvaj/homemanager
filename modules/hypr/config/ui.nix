{ config, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
      enable = true;
      settings = {
      env = [
        # hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      monitor = [ 
      	"eDP-1, 1920x1280@60, auto, 1"
        "HDMI-A-1, 3840x2160@60, auto, 1"
      ];

      general = {
        gaps_in = 8;
        gaps_out = 8;
        border_size = 4;
        "col.active_border" = "rgba(fe8019ff) rgba(d3869bff) 90deg";
        #"col.active_border" = "rgba(ebddb2ff)";
        "col.inactive_border" = "rgba(7c6f64ff)";
        resize_on_border = true;
        allow_tearing = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 4;
        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow = {
          enabled = false;
        };

        blur = {
          enabled = true;
            size = 1;
            passes = 2;
          };
        };

      animations = {
        enabled = true;
      };

      input = {
        kb_layout = "gb,us";
        kb_options = "grp:ralt_toggle";
      };

      gestures = {

        workspace_swipe_invert = true;
        workspace_swipe_distance = 400;
        gesture = [
        "3, horizontal, workspace"
        ];

      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
        smart_split = false;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      windowrulev2 = [
      ];

      workspace = [
      ];
    };
  };
}
