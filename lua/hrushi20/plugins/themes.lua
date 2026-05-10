return {
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        theme = "dragon",
        background = {
          dark = "dragon",
          light = "lotus",
        },
        dimInactive = false,
        terminalColors = true,
      })
      vim.cmd("colorscheme kanagawa-dragon")
    end,
  }
}
