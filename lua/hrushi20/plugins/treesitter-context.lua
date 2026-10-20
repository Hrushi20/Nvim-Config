return {
  "nvim-treesitter/nvim-treesitter-context",
  main = "treesitter-context",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    max_lines = 3,
    mode = "cursor",
  },
  keys = {
    {
      "<leader>tc",
      "<cmd>TSContext toggle<cr>",
      desc = "Toggle sticky code context",
    },
  },
}
