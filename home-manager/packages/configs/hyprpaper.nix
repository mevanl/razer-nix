{ pkgs, ... }:
{
    services.hyprpaper = {
        enable = true;
        package = pkgs.hyprpaper;

        settings = {
            ipc = "on";
            preload = [ 
                "~/media/pictures/wallpapers/frieren.png" 
            ];
            wallpaper = [
                ",~/media/pictures/wallpapers/frieren.png"
            ];
        };
    };
}
