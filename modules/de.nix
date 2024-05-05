{ inputs, lib, config, pkgs, ... }:
{
  imports = [
    ./hyprland/packages.nix
  ];

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
  };
}
