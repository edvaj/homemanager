{ config, pkgs, ... }: 
{
  imports = [
    ./config/alias.nix
    ./config/bash.nix
  ];
}
