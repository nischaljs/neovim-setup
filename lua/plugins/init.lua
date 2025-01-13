return {
  -- Plugin Manager
  { "folke/lazy.nvim" },

  -- LSP (Language Server Protocol)
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Syntax Highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- File Explorer
  { "nvim-tree/nvim-tree.lua" },

  -- Terminal
  { "akinsho/toggleterm.nvim" },

  -- Git Integration
  { "lewis6991/gitsigns.nvim" },

  -- Themes
  { "folke/tokyonight.nvim" },

  -- Prettier
  { "jose-elias-alvarez/null-ls.nvim" }, -- For Prettier and other formatters
  { "MunifTanjim/prettier.nvim" },       -- Prettier plugin

  -- Auto Pairs (Bracket Closing)
  { "windwp/nvim-autopairs" },

  -- Commenting
  { "numToStr/Comment.nvim" },

  -- Telescope (Fuzzy Finder)
  { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Minimal Statusline
  { "nvim-lualine/lualine.nvim" },
}
