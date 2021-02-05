vim.g.nvim_tree_width = 40
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_ignore = {
  'plugin',
  'jsconfig.json',
  'package-lock.json',
  '.git',
  '.nuxt',
  'node_modules',
  '.cache',
  '.DS_Store'
}
vim.g.nvim_tree_icons = {
   default = '',
 }
vim.g.nvim_tree_bindings = {
  preview = { '<Tab>' }
}

local keymap = require("astronauta.keymap")

keymap.nnoremap{'<C-e>', ':NvimTreeToggle<CR>'}
keymap.nnoremap{'<leader>r', ':NvimTreeRefresh<CR>'}
