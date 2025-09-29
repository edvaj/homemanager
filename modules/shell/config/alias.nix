{ config, pkgs, ... }:
{  
  # aliases
  home.shellAliases = {
    # nix os
    rs = "sudo nixos-rebuild switch";
    rsf = "sudo nixos-rebuild switch --flake .#";
    hm = "cd ~/.config/home-manager";
    hms = "home-manager switch";
    hmsf = "home-manager switch --flake .\\#goat";
    # application
    n = "nano";
    py = "python";
    tree = "tree --dirsfirst";
    
    csgn = "cd ~/Documents/csg/modules";
  };
}
