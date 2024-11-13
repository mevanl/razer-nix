{ pkgs, pkgs-stable, ... }:
{

    imports = [ 
        ./bash.nix
        ./cursor.nix
        ./firefox.nix
        ./foot.nix
        ./git.nix
        ./hyprland.nix
        ./hyprpaper.nix
        ./ohmyposh.nix
        ./rofi.nix
        ./tmux.nix
        ./vscode.nix
        ./waybar.nix

        ./nixvim/nixvim.nix
    ];

    # for packages that do not need configuration currently 
    home.packages = with pkgs; [
        # Basic Dev Tools 
        gcc

        # terminal tools
        tree
        fastfetch

        # desktop environment
        rofi-wayland
        grim
        slurp

    ];

}
