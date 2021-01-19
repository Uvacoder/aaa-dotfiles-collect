local map = require("utils/map").map

vim.g.nvim_tree_width = 40
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_width_allow_resize  = 1
vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1
}
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
  git = {
    unstaged = "M",
    staged = "A",
    unmerged = "═",
    renamed = "R",
    untracked = "U"
  },
}

map('n', '<C-e>', ':NvimTreeToggle<CR>', {})
map('n', '<leader>r', ':NvimTreeRefresh<CR>', {})
