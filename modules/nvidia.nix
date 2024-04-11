{ config, lib, pkgs, ... }:
{
  # Enable OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.production;
  };

  hardware.nvidia.prime = {
    amdgpuBusId = "PCI:04:0:0";
    nvidiaBusId = "PCI:01:0:0";
    
    # offload = {
    #   enable = true;
    #   enableOffloadCmd = true;
    # };

    sync.enable = true;
  };
}
