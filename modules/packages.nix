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
    unrar
    qbittorrent
    stremio
    keepassxc
    mpv
    skrooge
    kmymoney
    zathura
    btop
  ];

  services.flatpak.enable = true;
}
