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
    { name = "nvim_lsp" }, -- LSP source
    { name = "luasnip" },  -- Snippets source
  }, {
    { name = "buffer" },   -- Buffer source
  }),
})
