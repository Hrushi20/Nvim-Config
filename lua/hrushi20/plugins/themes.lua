return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "night",
        terminal_colors = true,
      })
      vim.cmd("colorscheme tokyonight-night")
    end,
  }
}
