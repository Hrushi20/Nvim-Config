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

  -- For Autocompletion
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


        -- Enable documentation window
        window = {
          documentation = cmp.config.window.bordered(),
        },
      })
    end,
  },
}
