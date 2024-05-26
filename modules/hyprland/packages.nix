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
    xdg-desktop-portal-hyprland
    kdePackages.polkit-kde-agent-1
    qt5-wayland
    qt6-wayland
    nm-applet
    udiskie
  ];

  programs.hyprland.enable = true;
}
