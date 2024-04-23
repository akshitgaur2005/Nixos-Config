{ config, lib, pkgs, ... }:
{
  imports = [
    ./nvidia.nix
  ];

  programs.steam.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    heroic
    lutris
    gamemode
    gamescope
    mangohud
    wineWowPackages.stable
  ];
}
