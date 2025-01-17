return {
  -- Core
  { "folke/lazy.nvim" },

  -- LSP 
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "pmizio/typescript-tools.nvim", dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" } },

  -- Bufferline
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

  -- Dashboard
  { "glepnir/dashboard-nvim" },

  -- Indentation
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require("config.lspsaga") -- Load your lspsaga configuration
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- Optional, for icons
      "nvim-treesitter/nvim-treesitter", -- Optional, for better syntax highlighting
    },
  },

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
