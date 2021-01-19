local map = require("utils/map").map

require('FTerm').setup({
  dimensions  = {
    height = 0.8,
    width = 0.8,
    row = 0.5,
    col = 0.5
  }
})

map('n', '<C-t>', ':FTermToggle<CR>', {})
map('t', '<C-t>', '<C-\\><C-n>:FTermToggle<CR>', {})
map('t', '<C-q>', '<C-\\><C-n>:FTermClose<CR>', {})
