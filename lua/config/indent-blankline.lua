require("ibl").setup({
    -- Enable indentation guides
    indent = {
      char = "│", -- Character used for the indentation guide
      tab_char = "│", -- Character used for tab indentation
    },
    -- Highlight the current scope (braces, brackets, etc.)
    scope = {
      show_start = true, -- Show the start of the scope
      show_end = true, -- Show the end of the scope
      char = "▏", -- Character used for the scope highlight
      highlight = { "Function", "Label" ,"Type"}, -- Highlight groups for the scope
    },
    -- Exclude certain filetypes or buffers
    exclude = {
      filetypes = {
        "help",
        "dashboard",
        "NvimTree",
        "Trouble",
        "lazy",
        "mason",
      },
      buftypes = {
        "terminal",
        "nofile",
      },
    },
  })