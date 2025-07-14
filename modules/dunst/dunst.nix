{ config, pkgs, ... }:
{
  services.dunst = {
    enable = true;
    settings = {
      global = {
        # pos 
        width = "300";
        height = "0,200";
        offset = "4x4";
        origin = "bottom-right";
        # frame
        frame_color = "#d3869b";
        frame_width = 4;
        corner_radius = 4;
        # font
        font = "JetBrainsMono Nerd Font 10";
        # icon
        icon_position = "right";
        max_icon_size = 64; 
        min_icon_size = 32;
        icon_corner_radius = 4; 
      };
    };
  };
}
