{
    programs.nixvim.plugins = {
        
        web-devicons.enable = true;

        telescope = {
            enable = true; 

            keymaps = {
                "<leader>ff" = "find_files";
                "<leader>gf" = "git_files";
            };

            settings.defaults.file_ignore_patterns = [
                "^.git/"
                "^__pycache__"
            ];
        };
    };
}
