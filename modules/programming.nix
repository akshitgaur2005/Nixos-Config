{ lib, pkgs, config, ...}:
{
  environment.systemPackages = with pkgs; [
    lunarvim
    gh
  ];
}
