{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    rofi-wayland
    kitty
    wl-clipboard
    swww
    hyprpicker
    polkit_gnome
    ags
    anyrun
    bibata-cursors
    papirus-icon-theme
    catppuccin-papirus-folders
    gnome.totem
    loupe
    amberol
  ];

  programs.hyprland.enable = true;
  services.blueman.enable = true;
}
