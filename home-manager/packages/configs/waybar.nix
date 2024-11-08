{ config, pkgs, lib, ... }:
{
  programs.waybar = {
    enable = true; 
    style = '' 

      * {
        border: none;
        border-radius: 0;
        font-family: "JetBrains Mono", monospace;
        font-size: 13px;
        min-height: 0;
      }

      window#waybar {
        background: rgba(0, 0, 0, 1);
        border-bottom: none;
        color:rgba(255, 255, 255, 1);
      }

      #workspaces {
        padding: 0px 0px 0px 15px;
      }

      #workspaces button {
        padding: 0px 5px; 
        background: transparent; 
        color: white;
        border-bottom: none;
        border-top: none;
      }

      #battery,
      #wireplumber,
      #network,
      #clock {
        padding: 0 7px;
      }
    '';

    settings = [{
      layer = "top";
      position = "top";
      height = 40;

      modules-left = [
        "custom/apps"
        "hyprland/workspaces"
      ];
      modules-center = [
        "hyprland/window"
      ];
      modules-right = [
	"backlight"
        "battery"
        "wireplumber"
        "network"
        "clock"
      ];

      "custom/apps" = {
        format = "Applications";
        on-click = "rofi -show drun";
      };
	
      "hyprland/window" = {
	format = "{title}";
	max_length = "150";
      };

      backlight = {
	format = "{percent}% ";
	on-scroll-up = "brightnessctl set 1%+";
	on-scroll-down = "brightnessctl set 1%-";
	min-length = 1;
	max-length = 100;
      };

      battery = {
        format = "{capacity}% ";
	format-charging = "{capacity}% ";
      };
      wireplumber = {
        format = "{volume}% ";
        format-muted = "";
        on-click = "pavucontrol";
      };

      network = {
        format-wifi = "";
        format-alt = "{ifname}: {essid}";
        format-disconnected = "";
      };

      clock = {
        format = "{:%I:%M %p}";
        format-alt = "{:%m/%d/%Y}";
      };
    }];
  };
}
