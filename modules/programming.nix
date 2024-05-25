{ lib, pkgs, config, ...}:
{
  environment.systemPackages = with pkgs; [
    gh
    apostrophe
    vscode
  ];
}
