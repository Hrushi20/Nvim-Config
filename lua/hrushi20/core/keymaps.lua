vim.g.mapleader = " "

local keymap = vim.keymap 

-- general keymaps

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

-- telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Trouble (Error Diagnostics)
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = 'Diagnostics (Trouble)' })
vim.api.nvim_set_keymap("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = 'Symbols (Trouble)'})
vim.api.nvim_set_keymap("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = 'Location List (Trouble)' })
vim.api.nvim_set_keymap("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = 'Quickfix List (Trouble)' })
vim.api.nvim_set_keymap("n", "<leader>xe", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true, desc = "Show diagnostics in float" })

-- COC Tagging
vim.keymap.set("n", "<C-]>", "<Plug>(coc-definition)", { silent = true })

