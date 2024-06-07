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
    networkmanagerapplet
    udiskie
    kdePackages.polkit-kde-agent-1
  ];

  programs.hyprland.enable = true;
}
