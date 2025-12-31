return {
  { "nvim-treesitter/nvim-treesitter",
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
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldmethod = 'expr'

    -- Highlighting
    -- vim.api.nvim_create_autocmd('FileType', {
    --   -- pattern = { '<filetype>' }, -- Can Configure per file FFtype
    --   callback = function() vim.treesitter.start() end,
    -- })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    init = function()
      -- Disable entire built-in ftplugin mappings to avoid conflicts.
      -- See https://github.com/neovim/neovim/tree/master/runtime/ftplugin for built-in ftplugins.
      vim.g.no_plugin_maps = true
    end,
    config = function()
      local select = require("nvim-treesitter-textobjects.select")

      ----------   Motions for class/Method  ----------------------
      vim.keymap.set({ "x", "o" }, "am", function()
        select.select_textobject("@function.outer", "textobjects")
      end, { desc = "Around function" })

      vim.keymap.set({ "x", "o" }, "im", function()
        select.select_textobject("@function.inner", "textobjects")
      end, { desc = "Inner function" })

      vim.keymap.set({ "x", "o" }, "ac", function()
        select.select_textobject("@class.outer", "textobjects")
      end, { desc = "Around class" })

      vim.keymap.set({ "x", "o" }, "ic", function()
        select.select_textobject("@class.inner", "textobjects")
      end, { desc = "Inner class" })


      local move = require("nvim-treesitter-textobjects.move");

      vim.keymap.set({ "n", "x", "o" }, "]m", function()
        move.goto_next_start("@function.outer", "textobjects")
      end, {desc = "Move to Start of Next func"}) 

      vim.keymap.set({ "n", "x", "o" }, "]M", function()
        move.goto_next_end("@function.outer", "textobjects")
      end, {desc = "Move to End of Next func"})

      vim.keymap.set({ "n", "x", "o" }, "[m", function()
        move.goto_previous_start("@function.outer", "textobjects")
      end, {desc = "Move to Start of Prev func"})

      vim.keymap.set({ "n", "x", "o" }, "[M", function()
        move.goto_previous_end("@function.outer", "textobjects")
      end, {desc = "Move to End of Prev func"})


      local ts_repeat_move = require "nvim-treesitter-textobjects.repeatable_move"
      -- Repeat movement with ; and ,
      -- ensure ; goes forward and , goes backward regardless of the last direction
      vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
      vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

      -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
      vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })

    end,
  }
}
