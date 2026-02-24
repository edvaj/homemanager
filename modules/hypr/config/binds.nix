{ config, pkgs, ... }:
{
    wayland.windowManager.hyprland.settings = {
        "$mainMod" = "SUPER";
        "$terminal" = "alacritty";
        "$browser" = "chromium";
        "$fileManager" = "thunar";
        "$musicPlayer" = "strawberry";
        "$menu" = "rofi";

        bind = [
            "$mainMod,       Return, exec, $terminal"
            "$mainMod,       bracketleft, exec, $browser"
            "$mainMod,       bracketright, exec, $fileManager"
            "$mainMod,       numbersign, exec, $musicPlayer"
            "$mainMod,       Z, exec, $menu -show drun"
            "$mainMod,       Q, killactive,"
            "$mainMod SHIFT, Q, exit,"
            "$mainMod,       space, togglefloating,"
            "$mainMod,       P, pin,"
            "$mainMod,       O, togglesplit,"
            "$mainMod,       B, exec, pkill -SIGUSR2 waybar"
            "$mainMod SHIFT, B, exec, pkill -SIGUSR1 waybar"

            # Moving focus
            "$mainMod, h, movefocus, l"
            "$mainMod, l, movefocus, r"
            "$mainMod, k, movefocus, u"
            "$mainMod, j, movefocus, d"

            # Moving windows
            "$mainMod SHIFT, h,  swapwindow, l"
            "$mainMod SHIFT, l,  swapwindow, r"
            "$mainMod SHIFT, k,  swapwindow, u"
            "$mainMod SHIFT, j,  swapwindow, d"

            # Resizeing windows                   X  Y
            "$mainMod CTRL, h,     resizeactive, -60 0"
            "$mainMod CTRL, l,     resizeactive,  60 0"
            "$mainMod CTRL, k,     resizeactive,  0 -60"
            "$mainMod CTRL, j,     resizeactive,  0  60"

            # Switching workspaces
            "$mainMod, 1, workspace, 1"
            "$mainMod, 2, workspace, 2"
            "$mainMod, 3, workspace, 3"
            "$mainMod, 4, workspace, 4"
            "$mainMod, 5, workspace, 5"
            "$mainMod, 6, workspace, 6"
            "$mainMod, 7, workspace, 7"
            "$mainMod, 8, workspace, 8"
            "$mainMod, 9, workspace, 9"
            "$mainMod, 0, workspace, 10"

            # Moving windows to workspaces
            "$mainMod SHIFT, 1, movetoworkspacesilent, 1"
            "$mainMod SHIFT, 2, movetoworkspacesilent, 2"
            "$mainMod SHIFT, 3, movetoworkspacesilent, 3"
            "$mainMod SHIFT, 4, movetoworkspacesilent, 4"
            "$mainMod SHIFT, 5, movetoworkspacesilent, 5"
            "$mainMod SHIFT, 6, movetoworkspacesilent, 6"
            "$mainMod SHIFT, 7, movetoworkspacesilent, 7"
            "$mainMod SHIFT, 8, movetoworkspacesilent, 8"
            "$mainMod SHIFT, 9, movetoworkspacesilent, 9"
            "$mainMod SHIFT, 0, movetoworkspacesilent, 10"
        ];

        # Move/resize windows with mainMod + LMB/RMB and dragging
        bindm = [
            "$mainMod, mouse:272, movewindow"
            "$mainMod, mouse:273, resizewindow"
        ];

        # Laptop multimedia keys for volume and LCD brightness
        bindel = [
            # speaker  
            ",XF86AudioRaiseVolume,  exec, wpctl set-volume @DEFAULT_SINK@ 2%+"
            ",XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_SINK@ 2%-"
            ",XF86AudioMute,         exec, wpctl set-mute @DEFAULT_SINK@ toggle"
            # mic
            "$mainMod, XF86AudioRaiseVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 10%+"
            "$mainMod, XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 10%-"                
            ",XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
            # display
            ",XF86MonBrightnessUp,   exec, brightnessctl s 2%+"
            ",XF86MonBrightnessDown, exec, brightnessctl s 2%-"
            ",XF86Display,           exec, hyprshot -m region --clipboard-only"
        ];
    };
}

