local map = require("helpers").map

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! ggVG<CR>')

map('t', 'jj', '<ESC>', {noremap = false})
map('i', '<C-c>', '<esc>')
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

