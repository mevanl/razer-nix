{ pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    package = pkgs.hyprpaper;

    settings = {
      ipc = "on";
      preload = [ 
	"~/media/pictures/wallpapers/mountain.jpg" 
      ];
      wallpaper = [
        ",~/media/pictures/wallpapers/mountain.jpg"
      ];
    };
  };
}
