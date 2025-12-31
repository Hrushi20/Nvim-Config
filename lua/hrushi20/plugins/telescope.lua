return {
  {
    'nvim-telescope/telescope.nvim',
    keys = {
      {'<leader>ff',':Telescope find_files<CR>', {desc = 'Find All Files in Project'}},
      {'<leader>fg',':Telescope live_grep<CR>', {desc = 'Grep in Files'}},
      {'<leader>fb',':Telescope buffers<CR>', {desc = 'Find files in Buffer'}},
      {'<leader>fh',':Telescope help_tags<CR>', {desc = 'Help Tags'}},
      {'<leader>gf',':Telescope git_files<CR>', {desc = 'Find Git tracked Files'}},
    },
    dependencies = {
      'nvim-lua/plenary.nvim', --[[ Mandatory for Telescope ]]
      {
        'nvim-telescope/telescope-fzf-native.nvim',  -- Makes search faster
        build = 'make'
      }
    },
    opts = {
      -- picker = {},
      -- extensions = {},
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("fzf")
  end,
  },

}
