return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "<leader>fj",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Jump to text",
    },
    {
      "<leader>fJ",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Jump by code structure",
    },
  },
}
