-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
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
  use 'rose-pine/neovim'


  use 'tpope/vim-surround'

  use 'nvim-tree/nvim-tree.lua' -- File Explorer

  use 'nvim-tree/nvim-web-devicons'  -- icons in file explorer

  use 'nvim-lualine/lualine.nvim' -- Status line at bottom of vim editor 

  use 'nvim-lualine/lualine.nvim' -- Status line at bottom of vim editor 

  use "nvim-lua/plenary.nvim"   -- Other plugins use this plugin
  use {'nvim-telescope/telescope.nvim', tag = '0.1.8'}
    
  use "tpope/vim-fugitive" -- Git workflows

  -- LSP Configuration with Auto completion
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

end)


