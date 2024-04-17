{ config, lib, pkgs, ... }:
let
  driverPkg = config.boot.kernelPackages.nvidiaPackages.stable;
in
{
  # Enable OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
    package = driverPkg;
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = driverPkg;
  };

  nixpkgs.config.nvidia.acceptLicense = true;

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
