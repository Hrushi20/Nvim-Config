return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
        { 
          "mason-org/mason.nvim", 
          opts = {}
        },
        {
          "mason-org/mason-lspconfig.nvim",
          opts = {
            ensure_installed = {
              "clangd",
              "lua_ls",
              "rust_analyzer",
            }
          }
        }
    },

    config = function()
      vim.lsp.enable("lua_ls")
      vim.lsp.enable("rust_analyzer")

      if vim.fn.executable("clangd") == 1 then
        vim.lsp.enable("clangd")
      end
    end,
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
