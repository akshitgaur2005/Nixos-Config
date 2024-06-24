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
    kmymoney
    zathura
    btop
    thunderbird-bin
    appimage-run
    xfce.thunar
    anydesk
    unzip
  ];

  services.flatpak.enable = true;
  xdg.portal.enable = true;
}
