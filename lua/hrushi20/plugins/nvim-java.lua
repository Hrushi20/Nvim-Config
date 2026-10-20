return {
  'nvim-java/nvim-java',
  ft = { "java" },
  opts = {
    java_debug_adapter = {
      enable = false,
    },
  },
  config = function(_, opts)
    require('java').setup(opts)
    vim.lsp.enable('jdtls')
  end,
}
