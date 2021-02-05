vim.g.undotree_HighlightChangedWithSign = 0
vim.g.undotree_WindowLayout = 4
vim.g.undotree_SetFocusWhenToggle = 1

local keymap = require("astronauta.keymap")

keymap.nnoremap{'<C-u>', ':UndotreeToggle<CR>'}

