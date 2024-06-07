{ config, lib, pkgs, ... }:
{
  imports = [
    ./nvidia.nix
  ];

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    heroic
    lutris
    mangohud
    wineWowPackages.stable
    wineWow64Packages.waylandFull
    protonup-qt
  ];
}
