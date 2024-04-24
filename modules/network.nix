{ config, pkgs, ... }:

{
  # Ensure networking is available before starting this service
  systemd.services.warpConnect = {
    after = [ "network.target" ];
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      ExecStart = "${pkgs.cloudflare-warp}/bin/warp-svc connect";
      User = "root";
    };
  };
}
