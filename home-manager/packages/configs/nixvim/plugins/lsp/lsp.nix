{
    programs.nixvim.plugins = {
        lsp-format = {
            enable = true;
            lspServersToEnable = "all"; 
        };

        lsp = {
            enable = true; 

            # Keymaps here

            servers = {
                nil_ls.enable = true;
                marksman.enable = true; 
            };
        };
    };
}
