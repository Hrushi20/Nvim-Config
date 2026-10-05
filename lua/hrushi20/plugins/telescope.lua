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
      {'<leader>fb', ':Telescope buffers<CR>', desc = 'Find files in Buffer'},
      {'<leader>fh', ':Telescope help_tags<CR>', desc = 'Help Tags'},
      {'<leader>fF', ':Telescope find_files hidden=true no_ignore=true<CR>', desc = 'Find All Files (incl. hidden)'},
      {'<leader>fr', ':Telescope oldfiles<CR>', desc = 'Recent Files'},
      {'<leader>fc', ':Telescope find_files cwd=~/.config/nvim<CR>', desc = 'Find Neovim Config Files'},
      {'<leader>f/', ':Telescope live_grep<CR>', desc = 'Live Grep'},
      {'<leader>fG', ':Telescope grep_string<CR>', desc = 'Grep Word Under Cursor'},
      {'<leader>/', ':Telescope current_buffer_fuzzy_find<CR>', desc = 'Search In Current Buffer'},
      -- {'<C-p>', ':Telescope find_files<CR>', desc = 'Find Files'},
      -- {'<C-f>', ':Telescope live_grep<CR>', desc = 'Search In Project'},
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
