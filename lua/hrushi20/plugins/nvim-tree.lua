return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = {},
    lazy = false,
    keys = {
      {'<leader>e',':NvimTreeToggle<CR>' , desc = "Toggle Explorer" },
      {'<leader>o', ':NvimTreeFindFile<CR>', desc = "Find File in directory"},
    },
    init = function()
    -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true
    end,
  }, 
  {
    'nvim-tree/nvim-web-devicons',
    lazy = false,
    opts = {}
  }
}
