vim.g.nvim_tree_width = 40
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_highlight_opened_files = 1
vim.g.nvim_tree_ignore = {
  "dist",
  "plugin",
  "netlify.toml",
  "jsconfig.json",
  "package-lock.json",
  ".git",
  ".nuxt",
  "node_modules",
  ".cache",
  "~*.*",
  ".DS_Store"
}

vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 0
}

vim.g.nvim_tree_icons = {
  default = '',
  symlik = '',
  git ={ 
    unstaged = "✗",
    stated = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌"
  },
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = ""
  },
  lsp = {
    hint = "",
    info = "",
    warning = "",
    error = ""
  }
}
local keymap = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

keymap('n', '<C-e>', ':NvimTreeToggle<CR>', options)
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)
keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', options)

