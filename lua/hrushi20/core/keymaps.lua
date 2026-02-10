vim.g.mapleader = " "

local keymap = vim.keymap 

-- general keymaps

keymap.set('n', 'H', ':bprevious<CR>', { desc = 'Previous buffer' })
keymap.set('n', 'L', ':bnext<CR>', { desc = 'Next buffer' })
keymap.set('n', '<leader>bb', ':Telescope buffers<CR>', { desc = 'Browse buffers' })
keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Delete buffer' })


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
