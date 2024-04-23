# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
    ../modules/hyprland/default.nix
  ];

  #nixpkgs = {
    # You can add overlays here
    #overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    #];
    # Configure your nixpkgs instance
    #config = {
      # Disable if you don't want unfree packages
    #  allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
    #  allowUnfreePredicate = _: true;
    #};
  #};

  # TODO: Set your username
  home = {
    username = "akshit";
    homeDirectory = "/home/akshit";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  # home.packages = with pkgs; [ steam ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "akshitgaur2005";
    userEmail = "akshitgaur@proton.me";
  };
  
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    #enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch --flake /home/akshit/nixos";
      dl-shell = "nix develop ~/nixos/shells/dl --impure -c zsh";
      silly = "nix develop ~/nixos/shells/silly --impure -c zsh";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
    
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
    };
  };

  
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
