{ lib, pkgs, config, ...}:
{
  imports = [ ./lsp.nix ];
  environment.systemPackages = with pkgs; [
    gh
    apostrophe
    vscode
    hugo
  ];
}
