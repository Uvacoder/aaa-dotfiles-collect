local keymap = require("astronauta.keymap")

require('FTerm').setup({
  dimensions  = {
    height = 0.8,
    width = 0.8,
    row = 0.5,
    col = 0.5
  }
})

keymap.nnoremap{'<C-t>', ':FTermToggle<CR>'}
keymap.tnoremap{'<C-t>', '<C-\\><C-n>:FTermToggle<CR>'}
keymap.tnoremap{'<C-q>', '<C-\\><C-n>:FTermClose<CR>'}
