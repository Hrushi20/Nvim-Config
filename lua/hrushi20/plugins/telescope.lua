return {
  {
    'nvim-telescope/telescope.nvim',
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
