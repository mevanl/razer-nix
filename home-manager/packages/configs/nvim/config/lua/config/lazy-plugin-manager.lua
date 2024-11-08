-- this block just installs lazy if it does not exists 
local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then 
     local lazyrepo = "https://github.com/folke/lazy.nvim.git"
     local output = vim.fn.system({"git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath})
     if vim.v.shell_error ~= 0 then
          vim.api.nvim_echo({
               { "Failed to clone lazy.nvim:\n", "ErrorMsg"},
               { output, "WarningMsg" },
               { "\nPress any key to exit..." },
          }, true, {})
          vim.fn.getchar()
          os.exit(1)
     end 
end 
vim.opt.rtp:prepend(lazypath)

-- Setup and get plugins for Lazy
--require("lazy").setup(plugins, opts)
require("lazy").setup("plugins")
