{
    imports = [ ./settings/imports.nix ./plugins/imports.nix ];
	
    programs.nixvim = {
        enable = true;
        defaultEditor = true;
            
        colorschemes.rose-pine.enable = true;

        viAlias = true;
        vimAlias = true; 
    };
}
