{ config, lib, pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    pyprland
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
    hyprpaper

    wezterm
    cool-retro-term

    starship
    helix

    imv

    catppuccin-cursors
    catppuccin-papirus-folders
  ];

  programs.hyprland.enable = true;
  environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.sessionVariables.WLR_NO_HARDWARE_CURSORS = "1";
}
