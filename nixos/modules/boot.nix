# Boot config 
{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelParams = [ "button.lid_init_state=open" ];
  boot.blacklistedKernelModules = [ "snd_pcsp" "wacom" "hid_uclogic" ];
  boot.supportedFilesystems = [ "ntfs" ];
}
