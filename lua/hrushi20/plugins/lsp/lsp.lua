
local lsp = require("lsp-zero")

lsp.preset('recommended')
lsp.setup({
  "rust_analyzer",
  "jdtls",
  "eslint"
})
