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
- UI: `which-key`, `bufferline.nvim`, `indent-blankline.nvim`
- Editing: `nvim-autopairs` with `nvim-cmp` integration
- Project sessions: `persistence.nvim`
- Pinned project files: Harpoon 2

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
- `<leader>pa`: add current file to Harpoon
- `<leader>pm`: open the Harpoon file list
- `<leader>p1`–`<leader>p4`: jump to a pinned file
- `<leader>bb` or `<leader><space>`: switch buffers
- `<leader>qs`: restore the session for the current project and Git branch
- `<leader>qS`: choose a saved project session
- `<leader>ql`: restore the last session
- `H` / `L`: previous/next buffer
- Press `Space` and pause to see available leader-key actions

Project sessions save automatically when Neovim exits after opening a file. Start Neovim from the project directory, then use `<leader>qs` to restore that project's session.

## Notes

- Leader key is `Space`.
- Treesitter-based folds are enabled globally.
- `clangd` is loaded only when executable is available.
