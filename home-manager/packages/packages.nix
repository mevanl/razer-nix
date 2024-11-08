{ pkgs, pkgs-stable, ... }:
{

  imports = [ ./configs/imports.nix ];

  home.packages = with pkgs; [
    # Basic Dev Tools 
    git 
    vscode
    gcc
    

    # terminal tools
    tree
    fastfetch
    tmux 

    # school shit
    #teams 
    #teams-for-linux ?
    unityhub

    # desktop environment
    rofi-wayland
    waybar
    whitesur-cursors
    grim
    slurp
     
  ];

}
