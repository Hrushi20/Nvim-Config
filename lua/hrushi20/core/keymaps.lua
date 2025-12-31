vim.g.mapleader = " "

local keymap = vim.keymap 

-- general keymaps


-- Trouble (Error Diagnostics)
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = 'Diagnostics (Trouble)' })
vim.api.nvim_set_keymap("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = 'Symbols (Trouble)'})
vim.api.nvim_set_keymap("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = 'Location List (Trouble)' })
vim.api.nvim_set_keymap("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = 'Quickfix List (Trouble)' })
vim.api.nvim_set_keymap("n", "<leader>xe", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true, desc = "Show diagnostics in float" })



-- Use Tabs to navigate Dropdown for autocomplete
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),

    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  },
})
