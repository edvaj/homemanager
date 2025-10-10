{ config, pkgs, inputs, ... }:

{
  # username and paths
  home.username = "goat";
  home.homeDirectory = "/home/goat";

  imports = [
    # ui
    ./modules/hypr/hypr.nix
    ./modules/waybar/waybar.nix
    ./modules/kitty/kitty.nix
    ./modules/theme/theme.nix
    ./modules/dunst/dunst.nix
    # function
    ./modules/shell/bash.nix
    ./modules/wlsunset/wlsunset.nix
    ./modules/newsboat/newsboat.nix
    ./modules/xdg/xdg.nix
    ./modules/zathura/zathura.nix
    ./modules/git/git.nix
    ./modules/nvf/nvf.nix
  ];

  # do not change - read wiki if must
  home.stateVersion = "24.05";

  # user specific packages (uneeded, 1 user) - can fine tune pkgs
  home.packages = [
  ];

  # can use to manage dotfiles but unorganized
  home.file = {
  };

  # set env variables
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
