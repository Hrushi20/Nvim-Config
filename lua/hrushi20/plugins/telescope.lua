return {
  {
    'nvim-telescope/telescope.nvim',
    keys = {
      -- Fallback git_files -> find_files
      {
        '<leader>ff',
        function()
          local ok, builtin = pcall(require, "telescope.builtin")
          if not ok then return end
          if pcall(builtin.git_files) then
            return
          else
            builtin.find_files()
          end
        end,
        desc = 'Find Git Tracked Files (or all files if not a git repo)',
      },
      {'<leader>gf', ':Telescope live_grep<CR>', desc = 'Grep in Files'},
      {'<leader>fb', ':Telescope buffers<CR>', desc = 'Find files in Buffer'},
      {'<leader>fh', ':Telescope help_tags<CR>', desc = 'Help Tags'},
    },
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
      },
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
