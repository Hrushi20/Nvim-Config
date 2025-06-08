local lsp_zero = require('lsp-zero')

-- Set recommended preset manually (since 'preset' is removed in v3)
lsp_zero.on_attach(function(client, bufnr)
end)

-- Optional: set default preferences
lsp_zero.set_preferences({
  suggest_lsp_servers = true,
  sign_icons = {
    error = "✘",
    warn = "▲",
    hint = "⚑",
    info = "»"
  }
})

-- Set up LSP servers
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').jdtls.setup({})
require('lspconfig').eslint.setup({})

-- Trouble.nvim for diagnostics
require("trouble").setup()

-- Custom diagnostic UI
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 2,
  },
})

