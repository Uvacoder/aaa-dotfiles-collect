-- vim.g.nvim_tree_width = 40
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_follow = 1
-- vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_ignore = {
  "plugin",
  "plugin",
  "jsconfig.json",
  "package-lock.json",
  ".git",
  ".nuxt",
  "node_modules",
  ".cache",
  ".DS_Store"
}
vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    git = {
        unstaged = "",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = ""
    },
    folder = {
        default = "",
        open = "",
        empty = "",
        empty_open = "",
        symlink = ""
    }
}
