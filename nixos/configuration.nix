{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./modules/imports.nix
    ./packages/packages.nix
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.05";
}
