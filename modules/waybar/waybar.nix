{ config, pkgs, ... }:
{
    programs.waybar = {
        enable = true;
        style = ./config/style.css;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 42;
                modules-left = ["hyprland/workspaces"];
                modules-center = ["hyprland/window"];
                modules-right = [ "tray" "memory" "backlight" "pulseaudio" "battery" "clock" ];
                "hyprland/workspaces" = {
                    disable-scroll = true;
                    show-special = true;
                    special-visible-only = true;
                    all-outputs = false;
                    format = "{icon}";
                    format-icons = {
                        "1" = "1";
                        "2" = "2";
                        "3" = "3";
                        "4" = "4";
            	        "5" = "5";
	                    "6" = "6";
                        "7" = "7";
	                    "8" = "8";
             	        "9" = "9";
	                    "10" = "0";
                    };

                    persistent-workspaces = {
                        "*" = 9;
                    };
                };
	
                "tray" = {
                    icon-size = 14;
                    spacing = 4;
                };

                "memory" = {
                    format = "  {used:0.2f}G ";
                };

                "backlight" = {
                    format = " {icon} {percent}% ";
                    format-icons = ["" "" "" "" "" "" "" "" ""];
                };

                "pulseaudio" = {
                    format = "{icon} {volume}% {format_source}";
                    format-bluetooth = "{icon} {volume}%  {format_source}";
                    format-muted = " {format_source}";            
                    # mic (source) part:
                    format-source = " {volume}%";
                    format-source-muted = "";

                    format-icons = {
                        "headphones" = "";
                        "phone" = "";
                        "car" = "";
                        "default" = ["" ""];
                        "effect_input.eq" = "󰺢";

                    };
                    on-click = "pavucontrol";
                };

                "battery" = {
                    states = {
                        warning = 30;
                        critical = 5;
                    };
                 
                    format = "{icon} {capacity}%";
                    format-charging = " {capacity}%";
                    format-alt = "{icon} {time}";
                    format-icons = ["" "" "" "" ""];
                };

                "clock" = {
                    format = "{:%H:%M}";
                    format-alt = "{:%A, %d %b %y at %R}";
                };
            };
        };
    };
}
