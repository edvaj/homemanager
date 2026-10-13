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
                #"col.active_border" = "rgba(98971aff) rgba(cc241dff) 45deg";
                "col.active_border" = "rgba(fe8019ff)";
                "col.inactive_border" = "rgba(7c6f64ff)";
                resize_on_border = true;
                allow_tearing = false;
                layout = "dwindle";
            };

            decoration = {
                rounding = 0;
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

                bezier = [
                        "sineIn, 0.12, 0, 0.39, 0"
                        "sineOut, 0.61, 1, 0.88, 1"
                        "sineInOut, 0.37, 0, 0.63, 1"
                ];
                    
                animation = [
                        #var,on/off,speed(e.g. 2 = 200ms), wave, spawn size
                        "windows, 1, 2, sineOut, popin 50%"
                        "windowsOut, 1, 2, sineIn, popin 50%"
                        "border, 1, 2, sineInOut"
                        "fade, 1, 2, sineOut"
                        "workspaces, 1, 1.5, sineInOut"
                ];
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

            ecosystem = {
                no_update_news = true;
            };

            windowrule = [
            ];

            workspace = [
            ];
        };
    };
}
