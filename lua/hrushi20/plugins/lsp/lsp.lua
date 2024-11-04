local lsp = require("lsp-zero")
local diagnostics = require("trouble")

lsp.preset('recommended')
lsp.setup({
  "rust_analyzer",
  "jdtls",
  "eslint"
})

diagnostics.setup()

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",  -- Choose a symbol you like, or use an emoji like "🔥"
    spacing = 2,
  },
})
