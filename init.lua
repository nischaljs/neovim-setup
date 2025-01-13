-- Set leader key before loading plugins
vim.g.mapleader = " "

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins
require("lazy").setup("plugins")

-- Load configurations
require("config.lsp")
require("config.cmp")
require("config.treesitter")
require("config.nvim-tree")
require("config.toggleterm")
require("config.gitsigns")
require("config.colorscheme")
require("config.keybindings")
require("config.prettier")
require("config.autopairs")
require("config.comment")
require("config.statusline")

-- Custom UI with "NISCHAL"
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd([[echom "NISCHAL"]])
    vim.cmd([[echom "Welcome to Neovim!"]])
  end,
})
