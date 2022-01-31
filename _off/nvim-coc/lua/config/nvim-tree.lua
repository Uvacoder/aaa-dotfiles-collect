vim.g.nvim_tree_width = 35
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_hide_dotfiles = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_git_hl = 0
vim.g.nvim_tree_ignore = {
  "dist",
  "plugin",
  "jsconfig.json",
  "package-lock.json",
  ".git",
  ".nuxt",
  "node_modules",
  ".cache",
  ".DS_Store"
}

vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1
}

-- vim.g.nvim_tree_icons = {
--     default = " ",
--     symlink = " ",
--     git = {
--         unstaged = "✗",
--         staged = "✓",
--         unmerged = "",
--         renamed = "➜",
--         untracked = "★",
--         deleted = "",
--         ignored = "◌"
--     },
    -- folder = {
    --     default = "",
    --     open = "",
    --     symlink = "",
    --     empty = "",
    --     empty_open = "",
    --     symlink_open = ""
    -- }
-- }

local keymap = vim.keymap.set
local options = {noremap = true, silent = true}

keymap('n', '<C-e>', ':NvimTreeToggle<CR>', options)
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)
keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', options)

