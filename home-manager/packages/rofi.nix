{ config, pkgs, lib, ... }:
{
  programs.rofi = { 
    enable = true;
    package = pkgs.rofi-wayland; 

    theme = 
      let 
        inherit (config.lib.formats.rasi) mkLiteral;
      in 
      {
        "configuration" = {
          show-icons = mkLiteral "true";
          display-drun = "";
          disable-history = mkLiteral "true";
        };

        "*" = {
          font = "Iosevka Nerd Font Medium 11";

          bg0 = mkLiteral "#1a1b26";
          bg1 = mkLiteral "#1f2335";
          bg2 = mkLiteral "#24283b";
          bg3 = mkLiteral "#414868";
          fg0 = mkLiteral "#c0caf5";
          fg1 = mkLiteral "#a9b1d6";
          fg2 = mkLiteral "#737aa2";
          red = mkLiteral "#f7768e";
          green = mkLiteral "#9ece6a";
          yellow = mkLiteral "#e0af68";
          blue = mkLiteral "#7aa2f7";
          magenta = mkLiteral "#9a7ecc";
          cyan = mkLiteral "#4abaaf";

          accent = mkLiteral "@red";
          urgent = mkLiteral "@yellow";

          background-color = mkLiteral "transparent";
          text-color = mkLiteral "@fg0";

          margin = mkLiteral "0";
          padding = mkLiteral "0";
          spacing = mkLiteral "0";
        };

        "element-icon, element-text, scrollbar" = {
          cursor = mkLiteral "pointer";
        };

        "window" = {
          location = mkLiteral "northwest";
          width = mkLiteral "400px";
          x-offset = mkLiteral "10px";
          y-offset = mkLiteral "10px";

          background-color = mkLiteral "@bg1";
          border = mkLiteral "1px";
          border-color = mkLiteral "@bg3";
          border-radius = mkLiteral "6px";
        };

        "inputbar" = {
          spacing = mkLiteral "8px";
          padding = mkLiteral "4px 8px";
          children = mkLiteral "[ icon-search, entry ]";
          background-color = mkLiteral "@bg0";
        };

        "icon-search, entry, element-icon, element-text" = {
          vertical-align = mkLiteral "0.5";
        };

        "icon-search" = {
          expand = mkLiteral "false";
          filename = "search-symbolic";
          size = mkLiteral "14px";
        };

        "textbox" = {
          padding = mkLiteral "4px 8px";
          background-color = mkLiteral "@bg2";
        };

        "listview" = {
          padding = mkLiteral "4px 0px";
          lines = mkLiteral "12";
          columns = mkLiteral "1";
          scrollbar = mkLiteral "true";
          fixed-height = mkLiteral "true";
          dynamic = mkLiteral "true";
        };

        "element" = {
          padding = mkLiteral "4px 8px";
          spacing = mkLiteral "8px";
        };

        "element normal urgent" = {
          text-color = mkLiteral "@urgent";
        };

        "element normal active" = {
          text-color = mkLiteral "@accent";
        };

        "element alternate active" = {
          text-color = mkLiteral "@accent";
        };

        "element selected" = {
          text-color = mkLiteral "@bg1";
          background-color = mkLiteral "@accent";
        };

        "element selected urgent" = {
          background-color = mkLiteral "@urgent";
        };

        "element-icon" = {
          size = mkLiteral "0.8em";
        };

        "element-text" = {
          text-color = mkLiteral "inherit";
        };

        "scrollbar" = {
          handle-width = mkLiteral "4px";
          handle-color = mkLiteral "@fg2";
          padding = mkLiteral "0 4px";
        };
      };
  };
}
