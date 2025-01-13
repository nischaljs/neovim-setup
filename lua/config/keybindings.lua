vim.g.mapleader = " "

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

-- Neovim keybindings
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" }) -- Leader+E for file explorer
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" }) -- Leader+FF to find files
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" }) -- Leader+FG to live grep
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" }) -- Leader+FB to find buffers
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags" }) -- Leader+FH for help tags
