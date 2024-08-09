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
  
  /*
  # Enable MAC Randomize
  systemd.services.macchanger = {
    enable = true;
    description = "Change MAC address";
    wantedBy = [ "multi-user.target" ];
    after = [ "network.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.macchanger}/bin/macchanger -r wlp0s20f3";
      ExecStop = "${pkgs.macchanger}/bin/macchanger -p wlp0s20f3";
      RemainAfterExit = true;
    };
  };
  */
  
}
