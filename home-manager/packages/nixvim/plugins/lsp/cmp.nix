{
    programs.nixvim.plugins = {

        cmp = {
            enable = true;


            autoEnableSources = true;

            settings = {
                sources = [
                    { name = "nvim_lsp"; } 
                    { name = "path"; }
                    { name = "buffer"; }
                ];


                mapping = {
                    "<C-Space>" = "cmp.mapping.complete()";
                    
                    "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
                    "<C-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
                    "<Enter>" = "cmp.mapping.confirm({select=true})";
                    
                    "<C-j>" = "cmp.mapping.scroll_docs(-4)";
                    "<C-k>" = "cmp.mapping.scroll_docs(4)";
                };
            };
        };
    };
}
