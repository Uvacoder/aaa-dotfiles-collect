local map = require("utils/map").map

map('n', '<C-q>', ':wq!<CR>', {})
map('i', '<C-c>', '<esc>', {})

-- search and replace
map('n', '<Leader>h', ':%s///<left><left>', {silent = false})
map('n', '<leader>s', ':%s//gcI<Left><Left><Left><Left>', {silent = false})
map('v', '<leader>s', ':s//gcI<Left><Left><Left><Left>', {silent = false})
map('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', {})

-- move lines
map('v', '<S-K>', ":m '<-2<CR>gv=gv", {})
map('v', '<S-J>', ":m '>+1<CR>gv=gv", {})
map('v', '<S-L>', '>gv', {})
map('v', '<S-H>', '<gv', {})

-- Better indenting
map('v', '<TAB>', '>gv', {})
map('v', '<S-TAB>', '<gv', {})

--  Quick window switching
map('n', '<Leader>j', '<C-w><C-j>', {})
map('n', '<Leader>k', '<C-w><C-k>', {})
map('n', '<Leader>l', '<C-w><C-l>', {})
map('n', '<Leader>h', '<C-w><C-h>', {})

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
map('o', 'A', ':<C-U>normal! ggVG<CR>', {})

