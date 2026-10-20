return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {
    branch = true,
  },
  keys = {
    {
      "<leader>qs",
      function()
        require("persistence").load()
      end,
      desc = "Restore project session",
    },
    {
      "<leader>qS",
      function()
        require("persistence").select()
      end,
      desc = "Select project session",
    },
    {
      "<leader>ql",
      function()
        require("persistence").load({ last = true })
      end,
      desc = "Restore last session",
    },
    {
      "<leader>qd",
      function()
        require("persistence").stop()
      end,
      desc = "Stop session saving",
    },
  },
}
