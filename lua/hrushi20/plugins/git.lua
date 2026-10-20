return {
  {
    'tpope/vim-fugitive',
    lazy = true,
    cmd = { "Git", "G" },
  },
  {
    'lewis6991/gitsigns.nvim',
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        local function map(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        map("n", "]h", function()
          if vim.wo.diff then
            return "]h"
          end
          vim.schedule(function()
            gs.nav_hunk("next", { target = "all" })
          end)
          return "<Ignore>"
        end, "Next Git Hunk (staged and unstaged)")

        map("n", "[h", function()
          if vim.wo.diff then
            return "[h"
          end
          vim.schedule(function()
            gs.nav_hunk("prev", { target = "all" })
          end)
          return "<Ignore>"
        end, "Previous Git Hunk (staged and unstaged)")

        map("n", "<leader>hs", gs.stage_hunk, "Stage / Unstage Hunk")
        map("n", "<leader>hr", gs.reset_hunk, "Reset Hunk")
        map("n", "<leader>hp", gs.preview_hunk, "Preview Hunk")
        map("n", "<leader>hS", gs.stage_buffer, "Stage Buffer")
        -- Keep the familiar unstage key, but use the modern staged-sign action.
        -- Gitsigns can reverse a staged hunk with stage_hunk; undo_stage_hunk only
        -- reverses a stage_hunk call from this Neovim session.
        map("n", "<leader>hu", gs.stage_hunk, "Unstage Hunk (on staged change)")
        map("n", "<leader>hb", function()
          gs.blame_line({ full = true })
        end, "Blame Line")
        map("n", "<leader>tb", gs.toggle_current_line_blame, "Toggle Line Blame")
        map("n", "<leader>hd", gs.diffthis, "Diff This")
        map("n", "<leader>hR", gs.reset_buffer, "Reset Buffer")
      end,
    },
  },
}
