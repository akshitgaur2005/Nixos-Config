{ inputs, config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim
    floorp
    git
    kitty
    brightnessctl
    playerctl
    pamixer
    nerdfonts
    tree
    discord
  ];
}
