{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Edvardas";
    userEmail = "edvardasj@proton.me";
    extraConfig = { 
      init.defaultBranch = "main";
    };
  };
}
