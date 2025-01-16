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
})

local Terminal = require("toggleterm.terminal").Terminal

-- Function to open multiple terminals
local function open_terminals(count, direction)
  for i = 1, count do
    local term = Terminal:new({
      direction = direction, -- "horizontal" or "vertical"
      size = direction == "horizontal" and 20 or 30, -- Adjust size based on direction
      hidden = false, -- Start visible
    })
    term:toggle() -- Open the terminal
  end
end

-- Custom commands
vim.api.nvim_create_user_command("Th", function(opts)
  local count = tonumber(opts.args) or 1 -- Default to 1 if no number is provided
  open_terminals(count, "horizontal")
end, { nargs = "?", desc = "Open terminals in horizontal split" })

vim.api.nvim_create_user_command("Tv", function(opts)
  local count = tonumber(opts.args) or 1 -- Default to 1 if no number is provided
  open_terminals(count, "vertical")
end, { nargs = "?", desc = "Open terminals in vertical split" })
