{ config, pkgs, ... }: 
{
  imports = [
    ./config/alias.nix
  ];

  programs.bash = {
    enable = true;
    # prompt color      
    initExtra = ''
      PS1='[\[\033[33m\]goat\[\033[32m\]@\[\033[31m\]dragonfly\[\033[0m\]:\[\033[34m\]\w\[\033[0m\]]\$ '
    '';
  };
}
