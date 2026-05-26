# Neovim Config

Personal Neovim setup using `lazy.nvim` with a clean Lua layout.

## Structure

- `init.lua`: entrypoint
- `lua/hrushi20/lazy.lua`: plugin bootstrap + lazy setup
- `lua/hrushi20/core/`: editor options and global keymaps
- `lua/hrushi20/plugins/`: plugin specs (LSP, Telescope, Tree, theme, etc.)

## Included Highlights

- Theme: `tokyonight-night`
- LSP: `lua_ls`, `rust_analyzer`, `clangd` (enabled if available)
- Completion: `nvim-cmp`
- Finder: `telescope.nvim` + `fzf-native`
- File explorer: `nvim-tree`
- Syntax/folds: `nvim-treesitter`

## First-Time Setup

1. Install Neovim `>= 0.11`.
2. Install external tools you use (`git`, `make`, compilers/LSP servers, etc.).
3. Open Neovim:
   - `nvim`
4. Sync plugins:
   - `:Lazy sync`
5. Restart Neovim once.

## Daily Keys (Quick Start)

- `<leader>e`: toggle file explorer
- `<leader>ff`: find files
- `<leader>fg`: live grep
- `<leader>bb` or `<leader><space>`: switch buffers
- `H` / `L`: previous/next buffer

## Notes

- Leader key is `Space`.
- Treesitter-based folds are enabled globally.
- `clangd` is loaded only when executable is available.
