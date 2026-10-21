return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { "<leader>f", group = "Find" },
      { "<leader>s", group = "Symbols" },
      { "<leader>t", group = "Toggle" },
      { "<leader>h", group = "Git hunks" },
      { "<leader>p", group = "Pinned files (Harpoon)" },
      { "<leader>c", group = "Code" },
      { "<leader>x", group = "Diagnostics" },
      { "<leader>q", group = "Project sessions" },
    },
  },
}
