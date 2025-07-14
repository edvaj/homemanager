{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    settings = {
      hide_window_decorations = "yes";
      confirm_os_window_close = 0;
      background_opacity = 0.75;
      background_blur = 0;
      dynamic_background_opacity = true;
      window_padding_width = 0;
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";

      # Gruvbox Dark color scheme
      foreground = "#ebdbb2";
      background = "#000000";
      selection_foreground = "#282828";
      selection_background = "#ebdbb2";
      cursor = "#ebdbb2";
      cursor_text_color = "#282828";
      # Normal colors
      color0  = "#282828";
      color1  = "#cc241d";
      color2  = "#98971a";
      color3  = "#d79921";
      color4  = "#458588";
      color5  = "#b16286";
      color6  = "#689d6a";
      color7  = "#a89984";
      # Bright colors
      color8  = "#928374";
      color9  = "#fb4934";
      color10 = "#b8bb26";
      color11 = "#fabd2f";
      color12 = "#83a598";
      color13 = "#d3869b";
      color14 = "#8ec07c";
      color15 = "#ebdbb2";
    };   
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
  };
}
