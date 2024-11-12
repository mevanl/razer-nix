{
    programs.nixvim.plugins.lualine = {
        enable = true;

        settings = {
            options = {
                globalstatus = true;
                theme = "rose-pine";
            };

            sections = {
                lualine_a = ["mode"];
                lualine_b = ["branch"];
                lualine_c = [ "filename" "diff" ];
            };
        };
    };
}
