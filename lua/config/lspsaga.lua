local saga = require('lspsaga')

saga.setup({
  -- Enable hover diagnostics
  hover_diagnostic = {
    enable = true,
    border = "rounded", -- Border style for the floating window
    max_width = 80,     -- Maximum width of the floating window
    max_height = 10,    -- Maximum height of the floating window
  },
  -- Other configurations can be added here
})