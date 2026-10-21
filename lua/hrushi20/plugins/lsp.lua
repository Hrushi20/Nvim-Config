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
              "ts_ls",
            }
          }
        }
    },

    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("CppReferenceKeymap", { clear = true }),
        callback = function(event)
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if not client or client.name ~= "clangd" then
            return
          end

          vim.keymap.set("n", "gC", function()
            require("telescope.builtin").lsp_references({
              include_declaration = false,
              jump_type = "never",
            })
          end, {
            buffer = event.buf,
            desc = "Find C++ uses of symbol",
          })
        end,
      })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("rust_analyzer")
      vim.lsp.enable("ts_ls")

      if vim.fn.executable("clangd") == 1 then
        vim.lsp.config("clangd", {
          cmd = {
            "clangd",
            "--enable-config",
          },
        })
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
