# Graphics are important too! 
{ config, lib, pkgs, ... }:
{
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware = {

    graphics = {
      enable = true;
      enable32Bit = true;
    };

    nvidia = {
      modesetting.enable = true;

      # power management
      powerManagement.enable = true;
      powerManagement.finegrained = true; 

      # no open source kernel
      open = false;

      nvidiaSettings = true;

      package = config.boot.kernelPackages.nvidiaPackages.stable;

      prime = {
        offload = {
          enable = true;
          enableOffloadCmd = true; 
        };

        # I NEED TO GET THESE 
        intelBusId = "PCI:0:0:2:0";
        nvidiaBusId = "PCI:0:1:0:0";
      };
    };

  };
}
