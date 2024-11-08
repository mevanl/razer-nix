require'nvim-treesitter.configs'.setup {
     -- list of parsers that will always be installed
     ensure_installed = { "c", "cpp", "c_sharp", "python" ,"lua", "nix", },
     sync_install = false,
     auto_install = false,
     ignore_install = {},

     highlight = {
          enable = true,

          -- list of parsers (not filetypes) to disable syntax highlighting
          disable = {},

          additional_vim_regex_highlighting = false, 
     },
}

-- nvim-treesitter-context adds the current context/scope line at the top 
require'treesitter-context'.setup {
     enable = true,
     multiwindow = false, 
     max_lines = 0, 
     min_window_height = 0,
     
     line_numbers = true,
     multiline_threshold = 20,
     trim_scope = 'outer',

     mode = 'cursor',
     seperator = nil,
     zindex = 20,
     on_attach = nil, 
}
