{ pkgs, pkgs-stable, ... }:
{
  imports = [ ./configs.nix ];

  environment.systemPackages = with pkgs; [
    
    # system
    brightnessctl
    home-manager

    # razer stuff
    openrazer-daemon
    polychromatic

    # WM 
    xwayland
    hyprland
    xdg-desktop-portal-hyprland

    # audio
    pipewire
    pavucontrol

    # Basic Apps 
    firefox
    foot 
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
