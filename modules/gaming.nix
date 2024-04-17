{ config, lib, pkgs, ... }:
{
  imports = [
    ./nvidia.nix
  ];

  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    heroic
    lutris
    gamemode
    gamescope
  ];
}
