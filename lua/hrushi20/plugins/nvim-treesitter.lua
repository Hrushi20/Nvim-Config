return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local treesitter = require('nvim-treesitter')
    treesitter.install({
      'c',
      'cpp',
      'java',
      'lua',
      'javascript',
      'python',
      'vim',
      'yaml',
      'json',
      'xml',
      'rust'
    })

    -- Folds
    -- vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    -- vim.wo[0][0].foldmethod = 'expr'

    -- Highlighting
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { '<filetype>' },
      callback = function() vim.treesitter.start() end,
    })
    end,
}
