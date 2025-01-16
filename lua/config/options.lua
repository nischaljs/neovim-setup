-- ~/.config/nvim/lua/config/options.lua

-- Enable line numbers
vim.opt.number = true -- Show absolute line numbers
vim.opt.relativenumber = false -- Disable relative line numbers
vim.opt.numberwidth = 3 -- Width of the line number column (default: 4)

-- Sign column (for diagnostics, Git signs, etc.)
vim.opt.signcolumn = "yes" -- Always show the sign column

-- Enable mouse support
vim.opt.mouse = "a" -- Allow mouse in all modes

-- Enable cursor line highlighting
vim.opt.cursorline = true -- Highlight the current line
vim.opt.cursorcolumn = false -- Disable column highlighting (optional)

-- Enable syntax highlighting
vim.opt.syntax = "enable" -- Ensure syntax highlighting is on

-- Enable filetype detection and plugins
vim.opt.filetype.plugin = "on"
vim.opt.filetype.indent = "on"

-- Enable hidden buffers (allow switching buffers without saving)
vim.opt.hidden = true

-- Enable persistent undo (undo history persists after closing the file)
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo" -- Store undo files in a dedicated directory

-- Enable better search
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Case-sensitive search if the query contains uppercase letters
vim.opt.hlsearch = true -- Highlight search results
vim.opt.incsearch = true -- Show search results as you type

-- Enable better tab behavior
vim.opt.tabstop = 4 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4 -- Number of spaces to use for auto-indentation
vim.opt.softtabstop = 4 -- Number of spaces a tab counts for while editing
vim.opt.expandtab = true -- Convert tabs to spaces

-- Enable auto-indentation
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smartindent = true -- Automatically insert indents for code blocks

-- Enable line wrapping
vim.opt.wrap = false -- Disable line wrapping (optional)
vim.opt.linebreak = true -- Wrap lines at word boundaries (if wrap is enabled)

-- Enable scrolloff (keep lines above/below the cursor visible)
vim.opt.scrolloff = 8 -- Number of lines to keep above/below the cursor
vim.opt.sidescrolloff = 8 -- Number of columns to keep to the left/right of the cursor

-- Enable better split behavior
vim.opt.splitbelow = true -- New horizontal splits open below the current window
vim.opt.splitright = true -- New vertical splits open to the right of the current window

-- Enable better terminal behavior
vim.opt.termguicolors = true -- Enable true color support in the terminal
vim.opt.showmode = false -- Hide the mode indicator (e.g., -- INSERT --) since it's shown in the statusline

-- Enable better backup behavior
vim.opt.backup = false -- Disable backup files
vim.opt.writebackup = false -- Disable backup files while writing
vim.opt.swapfile = false -- Disable swap files

-- Enable better completion behavior
vim.opt.completeopt = { "menuone", "noselect" } -- Better completion menu behavior

-- Enable better folding
vim.opt.foldmethod = "indent" -- Use indentation for folding
vim.opt.foldlevel = 99 -- Start with all folds open

-- Enable better statusline
vim.opt.laststatus = 3 -- Use a global statusline instead of per-window statuslines

-- Enable better command-line behavior
vim.opt.cmdheight = 1 -- Height of the command-line bar
vim.opt.showcmd = true -- Show partial commands in the command-line bar
vim.opt.wildmenu = true -- Enable command-line completion menu

-- Enable better visual feedback
vim.opt.showmatch = true -- Highlight matching brackets
vim.opt.matchtime = 2 -- Time (in tenths of a second) to show matching brackets

-- Enable better performance
vim.opt.lazyredraw = true -- Redraw the screen only when necessary
vim.opt.updatetime = 300 -- Faster completion and diagnostics (default: 4000ms)

-- Enable better clipboard integration
vim.opt.clipboard = "unnamedplus" -- Use the system clipboard for yanking and pasting

-- Enable better file encoding
vim.opt.fileencoding = "utf-8" -- Default file encoding
vim.opt.encoding = "utf-8" -- Default encoding for the editor

-- Enable better error handling
vim.opt.errorbells = false -- Disable error bells
vim.opt.visualbell = false -- Disable visual bells

-- Enable better window behavior
vim.opt.equalalways = false -- Do not automatically resize windows when splitting/closing 


-- Enable hover diagnostics
vim.api.nvim_create_autocmd("CursorHold", {
    pattern = "*",
    callback = function()
      vim.diagnostic.open_float(nil, { focusable = false })
    end,
  })



  -- Customize diagnostic floating window
vim.diagnostic.config({
    virtual_text = false, -- Disable inline virtual text
    signs = true,         -- Show signs in the sign column
    underline = true,     -- Underline errors
    update_in_insert = false, -- Don't update diagnostics in insert mode
    severity_sort = true, -- Sort diagnostics by severity
    float = {
      focusable = false,  -- Make the floating window non-focusable
      style = "minimal",  -- Minimal style for the floating window
      border = "rounded", -- Rounded border for the floating window
      source = "always",  -- Always show the source of the diagnostic
      header = "",        -- No header in the floating window
      prefix = "",        -- No prefix in the floating window
    },
  })