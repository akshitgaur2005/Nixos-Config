{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    rofi-wayland
    kitty
  ];

  programs.hyprland.enable = true;
}
