{ lib, pkgs, config, ...}:
{
  environment.systemPackages = with pkgs; [
    lunarvim
    gh
    apostrophe
    vscode
  ];

  services.ollama = {
    enable = true;
    acceleration = "cuda";
  };
}
