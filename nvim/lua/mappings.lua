local keymap = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

-- buffers navigation
keymap('n', '<Space>', '<PageDown>', options)
keymap('n', '-', '<PageUp>', options)

-- select all
keymap('n', '<Leader>sa', 'ggVG', options)

keymap('t', 'jj', '<ESC>', options)
keymap('n', '<C-s>', ':w<CR>', options)
keymap('i', '<C-s>', ':w<CR>', options)
keymap('n', '<C-q>', '!<CR>', options)
keymap('i', '<C-c>', '<esc>', options)
keymap('n', '<C-q>', '!<CR>', options)

-- search and replace
keymap('n', '<C-h>', ':%s///gcI<Left><Left><Left><Left><Left>', {noremap = true, expr = false, silent = false})
keymap('n', '<Esc><Esc><Esc>', ':nohlsearch<CR><Esc>', options)

-- move lines:
keymap('v', '<S-K>', ":m '<-2<CR>gv=gv", options)
keymap('v', '<S-J>', ":m '>+1<CR>gv=gv", options)
keymap('v', '<S-L>', '>gv', options)
keymap('v', '<S-H>', '<gv', options)

-- Better indenting
keymap('v', '<TAB>', '>gv', options)
keymap('v', '<S-TAB>', '<gv', options)

--  Quick window switching
keymap('n', '<leader>j', '<C-w><C-j>', options)
keymap('n', '<leader>k', '<C-w><C-k>', options)
