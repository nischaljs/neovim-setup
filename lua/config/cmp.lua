local cmp = require("cmp")
local luasnip = require("luasnip")

-- Load snippets from VS Code
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll up in docs
    ["<C-f>"] = cmp.mapping.scroll_docs(4),  -- Scroll down in docs
    ["<C-Space>"] = cmp.mapping.complete(),  -- Trigger completion
    ["<C-e>"] = cmp.mapping.abort(),         -- Close completion
    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp", priority = 1000 }, -- LSP source
    { name = "luasnip", priority = 750 },  -- Snippets source
    { name = "buffer", priority = 500 },   -- Buffer source
  }),
  sorting = {
    comparators = {
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.score,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },
})
