local map = require("utils/map").map

vim.g.undotree_HighlightChangedWithSign = 0
vim.g.undotree_WindowLayout = 4
vim.g.undotree_SetFocusWhenToggle = 1

map('n', '<C-u>', ':UndotreeToggle<CR>', {})

