{ inputs, config, lib, pkgs, ... }:
{
  imports = [
    ./network.nix
  ];
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
    cloudflare-warp
    direnv
    nix-direnv
    luajitPackages.jsregexp
    obsidian
  ];
}
