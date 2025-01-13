# Neovim Configuration

This repository contains my personal Neovim configuration, optimized for modern development workflows. It includes support for LSP (Language Server Protocol), autocompletion, syntax highlighting, file exploration, and much more. The configuration is modular, easy to maintain, and designed to work out of the box.

---

## Features

- **Language Server Protocol (LSP)**: Built-in support for TypeScript, TailwindCSS, ESLint, HTML, CSS, and Lua.
- **Autocompletion**: Powered by `nvim-cmp` with snippets support via `LuaSnip`.
- **Syntax Highlighting**: Enhanced with `nvim-treesitter`.
- **File Explorer**: Integrated with `nvim-tree.lua`.
- **Terminal**: Built-in terminal support using `toggleterm.nvim`.
- **Git Integration**: Git signs and diff views with `gitsigns.nvim`.
- **Theming**: Beautiful `tokyonight` colorscheme.
- **Formatting**: Prettier integration via `null-ls.nvim`.
- **Keybindings**: Intuitive, VS Code-like keybindings for ease of use.

---

## Installation

### Prerequisites

- **Neovim** (v0.9.0 or higher)
- **Git**
- **Node.js** (for LSP servers like TypeScript, ESLint, etc.)

### One-Liner Setup

To set up the entry basic configuration, run the following command in your terminal and for the lates setup that i will be updating continuously clone the repo:

```bash
bash <(curl -s https://raw.githubusercontent.com/nischaljs/neovim-setup/main/initialize.txt)

This command will:

Remove any existing Neovim configuration.

Set up the folder structure and configuration files.

Install all plugins and LSP servers.

Configure keybindings, themes, and other settings.

### Folder Structure
~/.config/nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   ├── lsp.lua
│   │   ├── cmp.lua
│   │   ├── treesitter.lua
│   │   ├── nvim-tree.lua
│   │   ├── toggleterm.lua
│   │   ├── gitsigns.lua
│   │   ├── colorscheme.lua
│   │   ├── prettier.lua
│   │   ├── autopairs.lua
│   │   ├── comment.lua
│   │   ├── statusline.lua
│   │   └── keybindings.lua
│   └── plugins/
│       └── init.lua
```

