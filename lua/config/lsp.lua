local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Setup Mason
mason.setup()

-- Automatically install LSP servers
mason_lspconfig.setup({
  ensure_installed = { "ts_ls", "tailwindcss", "eslint", "html", "cssls", "lua_ls" },
})

-- Setup LSP servers
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = function(_, bufnr)
        -- Keybindings for LSP
        local opts = { noremap = true, silent = true }
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

        -- Go to definition
        buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

        -- Show hover documentation
        buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

        -- Rename symbol
        buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

        -- Show references
        buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
      end,
    })
  end,
})
