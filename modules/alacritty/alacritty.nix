{ config, pkgs, ... }:
{ #one day ill use nixgl and depart from this bloat
  home.file.".config/alacritty/alacritty.toml".text = ''
    [window]
    decorations = "None"
    opacity = 0.8

    [window.padding]
    x = 0
    y = 0

    [font]
    size = 14

    [font.normal]
    family = "JetBrainsMono Nerd Font"

    [colors.primary]
    foreground = "#ebdbb2"
    background = "#000000"

    [colors.selection]
    text = "#282828"
    background = "#ebdbb2"

    [colors.cursor]
    text = "#282828"
    cursor = "#ebdbb2"

    [colors.normal]
    black = "#282828"
    red = "#cc241d"
    green = "#98971a"
    yellow = "#d79921"
    blue = "#458588"
    magenta = "#b16286"
    cyan = "#689d6a"
    white = "#a89984"

    [colors.bright]
    black = "#928374"
    red = "#fb4934"
    green = "#b8bb26"
    yellow = "#fabd2f"
    blue = "#83a598"
    magenta = "#d3869b"
    cyan = "#8ec07c"
    white = "#ebdbb2"
  '';
}
