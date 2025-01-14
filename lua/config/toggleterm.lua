require("toggleterm").setup({
  -- Configuration for multiple terminals
  open_mapping = [[<C-t>]], -- Ctrl+T to toggle the first terminal
  direction = "horizontal", -- Default terminal direction
  size = 20, -- Default terminal size
  shade_terminals = true, -- Add shading to distinguish terminals
  persist_mode = true, -- Remember terminal state between sessions
  start_in_insert = true, -- Start in insert mode
  close_on_exit = false, -- Don't close the terminal when the process exits
  shell = vim.o.shell, -- Use the default shell
  -- Additional terminal instances
  terminals = {
    {
      cmd = "bash", -- Command to run in the terminal
      direction = "horizontal", -- Direction of the terminal
      size = 20, -- Size of the terminal
      hidden = true, -- Start hidden
    },
    {
      cmd = "bash", -- Command to run in the second terminal
      direction = "vertical", -- Direction of the second terminal
      size = 50, -- Size of the second terminal
      hidden = true, -- Start hidden
    },
  },
})