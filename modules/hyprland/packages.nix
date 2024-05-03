{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    rofi-wayland
    kitty
    wl-clipboard
    swww
    bibata-cursors
    waybar
    mako
  ];

  programs.hyprland.enable = true;
}
