return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
        { 
          "mason-org/mason.nvim", 
          opts = {} 
        },
        "neovim/nvim-lspconfig",
    },
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
    },         

    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
        },
      })
    end,
  },
}
