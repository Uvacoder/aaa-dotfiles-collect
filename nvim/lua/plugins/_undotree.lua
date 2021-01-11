vim.g.undotree_HighlightChangedWithSign = 0
vim.g.undotree_WindowLayout = 4
vim.g.undotree_SetFocusWhenToggle = 1

vim.api.nvim_set_keymap('n', '<C-u>', ':UndotreeToggle<CR>', {noremap = true, silent = true, expr = false})

