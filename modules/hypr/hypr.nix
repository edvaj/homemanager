{ config, pkgs, ... }:
{
  imports = [
    ./ui.nix
    ./binds.nix
    ./startup.nix
    ./input.nix
  ];
}
