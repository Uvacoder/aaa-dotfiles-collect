local keymap  = require("astronauta.keymap")

local map = require("helpers").map

-- reload
-- map('n', '<Leader><CR>', ':so ~/.config/nvim/init.lua<CR>')

-- buffers navigation
map('n', '<Space>', '<PageDown>')
map('n', '-', '<PageUp>')

-- select all
map('n', '<Leader>a', 'ggVG')

--
map('t', 'jj', '<ESC>', {noremap = false})
map('n', '<C-s>', ':w<CR>')
map('i', '<C-s>', ':w<CR>')
-- map('i', '<C-c>', '<esc>')
map('n', '<C-q>', ':wq!<CR>')

-- search and replace
map('n', '<Leader>s', ':%s///gcI<Left><Left><Left><Left><Left>', {silent = false})
map('n', '<Esc><Esc><Esc>', ':nohlsearch<CR><Esc>')

-- move lines
map('v', '<S-K>', ":m '<-2<CR>gv=gv")
map('v', '<S-J>', ":m '>+1<CR>gv=gv")
map('v', '<S-L>', '>gv')
map('v', '<S-H>', '<gv')

-- Better indenting
map('v', '<TAB>', '>gv')
map('v', '<S-TAB>', '<gv')

--  Quick window switching
map('n', '<Leader>w', '<C-w><C-w>')
