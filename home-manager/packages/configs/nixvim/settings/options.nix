{
    programs.nixvim = {
        clipboard = { providers.wl-copy.enable = true; };

        opts = {
            updatetime = 100;

            # line stuff
            relativenumber = true;
            number = true;

            # text
            wrap = false;
            tabstop = 4;
            shiftwidth = 4;
            expandtab = true;
            autoindent = true;

            # vim meta stuff 
            swapfile = false;
            undofile = true;

            # searching
            incsearch = true;
            hlsearch = false; 

            # term
            termguicolors = true; 

            # scrolling
            scrolloff = 8;

        };
    };
}
