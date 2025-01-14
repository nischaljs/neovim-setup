-- Set leader key
vim.g.mapleader = " "

-- Ensure `vim` is defined (to avoid "undefined global vim" errors)
if not vim then
  vim = {}
end

-- VS Code-like keybindings
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" }) -- Ctrl+S to save
vim.keymap.set("n", "<C-w>", ":bd<CR>", { desc = "Close buffer" }) -- Ctrl+W to close
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" }) -- Ctrl+N for file explorer
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Ctrl+T for terminal
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find files" }) -- Ctrl+P to find files
vim.keymap.set("n", "<C-f>", "/", { desc = "Search in file" }) -- Ctrl+F to search
vim.keymap.set("n", "<C-h>", ":split<CR>", { desc = "Horizontal split" }) -- Ctrl+H for horizontal split
vim.keymap.set("n", "<C-v>", ":vsplit<CR>", { desc = "Vertical split" }) -- Ctrl+V for vertical split
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" }) -- Ctrl+J to move down
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" }) -- Ctrl+K to move up
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" }) -- Ctrl+L to move right
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" }) -- Ctrl+H to move left

-- Terminal keybindings
vim.keymap.set("n", "<C-`>", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Ctrl+` to toggle terminal (like VSCode)
vim.keymap.set("t", "<C-`>", "<C-\\><C-n>:ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Ctrl+` in terminal mode
vim.keymap.set("n", "<leader>th", ":ToggleTerm<CR>:split<CR>:ToggleTerm<CR>", { desc = "Open Two Terminals (Horizontal Split)" }) -- Leader+th for two horizontal terminals
vim.keymap.set("n", "<leader>tv", ":ToggleTerm<CR>:vsplit<CR>:ToggleTerm<CR>", { desc = "Open Two Terminals (Vertical Split)" }) -- Leader+tv for two vertical terminals

-- Neovim keybindings
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" }) -- Leader+E for file explorer
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" }) -- Leader+FF to find files
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" }) -- Leader+FG to live grep
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" }) -- Leader+FB to find buffers
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags" }) -- Leader+FH for help tags

-- Additional VSCode-like keybindings
vim.keymap.set("n", "<C-b>", ":Telescope buffers<CR>", { desc = "Switch buffers" }) -- Ctrl+B to switch buffers
vim.keymap.set("n", "<C-g>", ":Telescope git_files<CR>", { desc = "Find Git files" }) -- Ctrl+G to find Git files
vim.keymap.set("n", "<C-k>", ":Telescope keymaps<CR>", { desc = "Show keymaps" }) -- Ctrl+K to show keymaps
vim.keymap.set("n", "<C-q>", ":q<CR>", { desc = "Close window" }) -- Ctrl+Q to close window
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" }) -- Ctrl+A to select all
vim.keymap.set("n", "<C-z>", "u", { desc = "Undo" }) -- Ctrl+Z to undo
vim.keymap.set("n", "<C-y>", "<C-r>", { desc = "Redo" }) -- Ctrl+Y to redo

-- LSP keybindings
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" }) -- gd to go to definition
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", { desc = "Show references" }) -- gr to show references
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", { desc = "Show documentation" }) -- K to show hover documentation
vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol" }) -- Leader+rn to rename symbol
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" }) -- Leader+ca for code actions
