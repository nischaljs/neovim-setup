require("toggleterm").setup({
  size = 20,               -- Default terminal size
  open_mapping = [[<C-`>]], -- Use Ctrl + ` to toggle the terminal
  direction = "horizontal", -- Default terminal direction
  hide_numbers = true,      -- Hide terminal numbers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,       -- Darken the terminal background
  start_in_insert = true,   -- Start the terminal in insert mode
  insert_mappings = true,   -- Allow mappings in insert mode
  persist_size = true,      -- Remember the terminal size
  close_on_exit = true,     -- Close the terminal when the process exits
  shell = vim.o.shell,      -- Use the default shell
  float_opts = {
    border = "curved",      -- Border style for floating terminal
    winblend = 0,           -- Transparency for floating terminal
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})
