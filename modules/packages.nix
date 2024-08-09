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
    kdePackages.ark
    p7zip
    lazygit
    ripgrep
    cowsay
    fortune
    syncthing
    onlyoffice-bin
    tor-browser
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    nerd-font-patcher
  ];

  services.flatpak.enable = true;
  xdg.portal.enable = true;
}
