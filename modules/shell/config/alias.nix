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
    # application shortcuts
    py = "python";
    tree = "tree --dirsfirst";
    dl = "cd ~/Projects/python/dl && py deadlines.py";
     # neovim
    nv = "nvim";
    nvf = "cd ~/.config/home-manager/modules/nvf && nvim nvf.nix";
  };
}
