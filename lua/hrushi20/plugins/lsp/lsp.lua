local lsp_zero = require('lsp-zero')

-- Set recommended preset manually (since 'preset' is removed in v3)
lsp_zero.on_attach(function(client, bufnr)
end)

-- Manually configure nvim-cmp (required in v3)
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-Space>'] = cmp.mapping.complete(),
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'luasnip' },
  },

  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

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

