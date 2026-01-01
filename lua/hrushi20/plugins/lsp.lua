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

    --- Clang not support for aarch64. U
    --- Install clang on the host and uncomment this for lsp support

    -- config = function()
    --   vim.lsp.config("clangd", {
    --     cmd = { "clangd" },
    --     filetypes = { "c", "cpp", "objc", "objcpp" },
    --     root_markers = {
    --       "compile_commands.json",
    --       "meson.build",
    --       ".git",
    --     },
    --   })
    --   vim.lsp.enable("clangd")
    -- end,
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
