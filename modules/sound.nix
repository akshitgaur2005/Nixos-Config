{ inputs, lib, config, pkgs, ... }:
{
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    wireplumber.enable = true;
  };

  environment.systemPackages = with pkgs; [
    pavucontrol
    easyeffects
    pamixer
  ];

  # systemd.user.services.easyeffects = {
  #   Unit = {
  #     Description = "Easyeffects daemon";
  #     Requires = ["dbus.service"];
  #     After = ["graphical-session-pre.target"];
  #     PartOf = ["graphical-session.target" "pipewire.service"];
  #   };

  #   Install.WantedBy = ["graphical-session.target"];

  #   Service = {
  #     ExecStart = "${pkgs.easyeffects}/bin/easyeffects --gapplication-service";
  #     ExecStop = "${pkgs.easyeffects}/bin/easyeffects --quit";
  #     Restart = "on-failure";
  #     RestartSec = 5;
  #   };
  # };

  systemd.user.services.easyeffects = {
    enable = true;
    description = "EasyEffects Application with Perfect EQ Preset";
    after = [ "pipewire.target"];
    wantedBy = ["multi-user.target"];
    serviceConfig = {
      ExecStart = "${pkgs.easyeffects}/bin/easyeffects --gapplication-service --preset-activate 'Perfect EQ'";
      ExecStartPost = "${pkgs.easyeffects}/bin/easyeffects --preset-activate 'Perfect EQ'";
      Restart = "on-failure";
    };
  };


}
