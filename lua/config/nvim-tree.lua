require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
  renderer = {
    group_empty = true, -- Group empty folders
  },
  filters = {
    dotfiles = true, -- Hide dotfiles
  },
})
