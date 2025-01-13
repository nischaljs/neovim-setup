require("nvim-treesitter.configs").setup({
  ensure_installed = { "javascript", "typescript", "html", "css", "json", "lua" },
  highlight = {
    enable = true, -- Enable syntax highlighting
  },
  indent = {
    enable = true, -- Enable indentation
  },
  autotag = {
    enable = true, -- Auto close HTML/JSX tags
  },
})
