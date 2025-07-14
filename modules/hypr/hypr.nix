{ config, pkgs, ... }:
{
  imports = [
    ./config/ui.nix
    ./config/binds.nix
    ./config/startup.nix
    ./config/input.nix
  ];
}
