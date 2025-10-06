
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use {'rose-pine/neovim', as = 'rose-pine'}

  -- Surround (ys, cs, ds)
  use 'tpope/vim-surround'

  -- File explorer
  use 'nvim-tree/nvim-tree.lua'

  -- File explorer icons
  use 'nvim-tree/nvim-web-devicons'

  -- Status line
  use 'nvim-lualine/lualine.nvim'

  -- Common Lua functions used by plugins
  use 'nvim-lua/plenary.nvim'

  -- Telescope (fuzzy finder)
  use {'nvim-telescope/telescope.nvim', tag = '0.1.8'}

  -- Git integration
  use 'tpope/vim-fugitive'

  -- Diagnostics list
  use 'folke/trouble.nvim'

  -- Easy commenting
  use 'numToStr/Comment.nvim'

  -- ✅ CoC: Conquer of Completion (LSP, completion, snippets, etc.)
  use {'neoclide/coc.nvim', branch = 'release'}
end)
