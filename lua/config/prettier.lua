-- Prettier configuration
local null_ls = require("null-ls")
local prettier = require("prettier")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      filetypes = { "javascript", "typescript", "css", "html", "json", "markdown" },
    }),
  },
})

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.css", "*.html", "*.json", "*.md" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
