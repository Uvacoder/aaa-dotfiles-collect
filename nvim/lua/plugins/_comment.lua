local keymap  = require("astronauta.keymap")

require('nvim_comment').setup()

keymap.nmap{'<C-_>', '<leader>gcc'}
keymap.vmap{'<C-_>', '<leader>c'}
