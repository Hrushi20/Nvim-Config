
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)

  -- Surround (ys, cs, ds)
  use 'tpope/vim-surround'

  -- Status line
  use 'nvim-lualine/lualine.nvim'


  -- Diagnostics list
  use 'folke/trouble.nvim'

  -- ✅ CoC: Conquer of Completion (LSP, completion, snippets, etc.)
  use {'neoclide/coc.nvim', branch = 'release'}
end)
