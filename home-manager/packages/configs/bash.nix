{
  programs.bash = {
    enable = true;
    
    #bashrcExtra = ''
    #    [[ $TERM == "foot" ]] && exec tmux
    #'';

    #logoutExtra = ''
    #    tmux kill-server
    #'';
	
    shellAliases = let flakeDir = "~/nix"; in {

      # Rebuild Nixos
      rebuild = "sudo nixos-rebuild switch --flake ${flakeDir}";
      home-rebuild = "home-manager switch --flake ${flakeDir}";
      
      # Upgrade + Update flake
      update-flake = "sudo nix flake update --flake ${flakeDir}";
      upgrade-flake = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

      # Cleaning up NixOS
      home-delete-generations = "home-manager expire-generations \"-1 days\" && nix-collect-garbage";


      # App launch 
      code = "code --ozone-platform=wayland";
    };
  };
}
