{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      mvllow.rose-pine
      bbenoist.nix 
      vscodevim.vim
    ]; 

    # Updates
    enableExtensionUpdateCheck = true; 
    enableUpdateCheck = false; 
	
	
    userSettings = {
      "files.autoSave" = "afterDelay"; 
      
      "editor.fontSize" = 20;
      "editor.fontFamily" = "JetBrains Mono";
      "editor.minimap.enabled" = false;
      "editor.tabSize" = 4;
      "editor.wordWrap" = "off";

      "workbench.colorTheme" = "Rosé Pine";
      "workbench.startupEditor" = "none";
      "workbench.remoteIndicator.showExtensionRecommendations" = false;
      "extensions.ignoreRecommendations" = true;

      "window.zoomLevel" = 2;               
      "window.restoreFullscreen" = true;
      "window.menuBarVisibility" = "hidden";
      "workbench.activityBar.location" = "hidden";
      "editor.scrollbar.horizontal" = "hidden";
      "editor.scrollbar.vertical" = "hidden";
      "editor.lineNumbers" = "relative";
    };
  };
}
