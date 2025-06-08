local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- split windows 
opt.splitright = true
opt.splitbelow = true

-- Incrmental search
vim.opt.hlsearch = false 
vim.opt.incsearch = true 

-- Auto scoll
vim.opt.scrolloff = 8

-- Sync Clipboard
vim.opt.clipboard = "unnamedplus"
