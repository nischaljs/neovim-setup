-- Set leader key
vim.g.mapleader = " "

-- Ensure `vim` is defined (to avoid "undefined global vim" errors)
if not vim then
  vim = {}
end

-- =============================================
-- General Keybindings
-- =============================================

-- Save file
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file" }) -- Ctrl+S to save

-- Close buffer
vim.keymap.set("n", "<C-w>", ":bd<CR>", { desc = "Close buffer" }) -- Ctrl+W to close buffer

-- Select all
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" }) -- Ctrl+A to select all

-- Undo/Redo
vim.keymap.set("n", "<C-z>", "u", { desc = "Undo" }) -- Ctrl+Z to undo
vim.keymap.set("n", "<C-y>", "<C-r>", { desc = "Redo" }) -- Ctrl+Y to redo

-- =============================================
-- Window Management
-- =============================================

-- Split windows
vim.keymap.set("n", "<C-h>", ":split<CR>", { desc = "Horizontal split" }) -- Ctrl+H for horizontal split
vim.keymap.set("n", "<C-v>", ":vsplit<CR>", { desc = "Vertical split" }) -- Ctrl+V for vertical split

-- Navigate between splits
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" }) -- Ctrl+J to move down
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" }) -- Ctrl+K to move up
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" }) -- Ctrl+L to move right
vim.keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Move to left split" }) -- Ctrl+Left to move left

-- =============================================
-- File Explorer (NvimTree)
-- =============================================

-- Toggle file explorer
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" }) -- Ctrl+N for file explorer
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" }) -- Leader+e to toggle file explorer

-- =============================================
-- Terminal Management (ToggleTerm)
-- =============================================

-- Toggle terminal
vim.keymap.set("n", "<C-t>", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Ctrl+T for terminal
vim.keymap.set("t", "<C-`>", "<C-\\><C-n>:ToggleTerm<CR>", { desc = "Toggle Terminal" }) -- Ctrl+` in terminal mode

-- Open terminals in different layouts
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { desc = "Toggle horizontal terminal" }) -- Leader+th for horizontal terminal
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical<CR>", { desc = "Toggle vertical terminal" }) -- Leader+tv for vertical terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Toggle floating terminal" }) -- Leader+tf for floating terminal
vim.keymap.set("n", "<leader>2th", ":ToggleTerm direction=horizontal<CR>:split<CR>:ToggleTerm direction=horizontal<CR>", { desc = "Open two horizontal terminals" })
vim.keymap.set("n", "<leader>2tv", ":ToggleTerm direction=vertical<CR>:vsplit<CR>:ToggleTerm direction=vertical<CR>", { desc = "Open two vertical terminals" })

-- =============================================
-- Buffer Navigation
-- =============================================

-- Next/Previous buffer
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" }) -- Shift+L to go to the next buffer
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" }) -- Shift+H to go to the previous buffer

-- Delete buffer
vim.keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete buffer" }) -- Leader+bd to delete the current buffer
vim.keymap.set("n", "<leader>bD", ":bd!<CR>", { desc = "Force delete buffer" }) -- Leader+bD to force delete the current buffer

-- Find buffers with Telescope
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" }) -- Leader+fb to find buffers

-- =============================================
-- Telescope (Fuzzy Finder)
-- =============================================

-- Find files
vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>", { desc = "Find files" }) -- Ctrl+P to find files
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" }) -- Leader+ff to find files

-- Live grep
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" }) -- Leader+fg to live grep

-- Help tags
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags" }) -- Leader+fh for help tags

-- =============================================
-- LSP Keybindings
-- =============================================

-- Go to definition
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" }) -- gd to go to definition
vim.keymap.set("n", "<F12>", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" }) -- F12 to go to definition

-- Show references
vim.keymap.set("n", "gr", ":lua vim.lsp.buf.references()<CR>", { desc = "Show references" }) -- gr to show references
vim.keymap.set("n", "<S-F12>", ":lua vim.lsp.buf.references()<CR>", { desc = "Find references" }) -- Shift+F12 to find references

-- Show hover documentation
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", { desc = "Show documentation" }) -- K to show hover documentation

-- Rename symbol
vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol" }) -- Leader+rn to rename symbol
vim.keymap.set("n", "<F2>", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol" }) -- F2 to rename symbol

-- Code actions
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions" }) -- Leader+ca for code actions

-- Format file
vim.keymap.set("n", "<C-S-i>", ":lua vim.lsp.buf.format()<CR>", { desc = "Format file" }) -- Ctrl+Shift+I to format
vim.keymap.set("n", "<leader>fm", ":lua vim.lsp.buf.format()<CR>", { desc = "Format file" }) -- Leader+fm to format

-- =============================================
-- Tree-sitter Keybindings
-- =============================================

-- Show highlight groups
vim.keymap.set("n", "<leader>ts", ":TSHighlightCapturesUnderCursor<CR>", { desc = "Show Tree-sitter highlight groups" }) -- Leader+ts to show highlight groups

-- Show node under cursor
vim.keymap.set("n", "<leader>tn", ":TSNodeUnderCursor<CR>", { desc = "Show Tree-sitter node under cursor" }) -- Leader+tn to show node under cursor

-- =============================================
-- Commenting (Comment.nvim)
-- =============================================

-- Toggle comment
vim.keymap.set("n", "<C-/>", ":CommentToggle<CR>", { desc = "Toggle comment" }) -- Ctrl+/ to toggle comment
vim.keymap.set("v", "<C-/>", ":CommentToggle<CR>", { desc = "Toggle comment" }) -- Ctrl+/ to toggle comment in visual mode

-- =============================================
-- Miscellaneous
-- =============================================

-- Search in file
vim.keymap.set("n", "<C-f>", "/", { desc = "Search in file" }) -- Ctrl+F to search

-- Find and replace
vim.keymap.set("n", "<C-h>", ":Telescope live_grep<CR>", { desc = "Find and replace" }) -- Ctrl+H to find and replace