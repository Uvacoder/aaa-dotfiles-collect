local keymap = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

--Remap space as leader key
keymap('', '<Space>', '<Nop>', { noremap = true, silent=true})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap escape to leave terminal mode
keymap('t', '<Esc>', [[<c-\><c-n>]], {noremap = true})

--Add map to enter paste mode
vim.o.pastetoggle="<F3>"

keymap("n", "<C-_>", ":CommentToggle<CR>", options)
keymap("v", "<C-_>", ":CommentToggle<CR>", options)

-- buffers navigation
keymap('n', '=', '<PageDown>', options)
keymap('n', '-', '<PageUp>', options)

-- select all
keymap('n', '<Leader>sa', 'ggVG', options)

-- I hate escape
keymap('i', 'jk', '<ESC>', options)
keymap('i', 'kj', '<ESC>', options)
keymap('i', 'jj', '<ESC>', options)
keymap('t', 'jj', '<ESC>', options)

keymap('n', '<C-s>', ':w<CR>', options)
keymap('i', '<C-s>', '<esc>:w<CR>', options)
keymap('n', '<C-q>', '!<CR>', options)
keymap('i', '<C-c>', '<esc>', options)

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

-- Tab switch buffer
keymap('n', '<TAB>', ':bnext<CR>', options)
keymap('n', '<S-TAB>', ':bprevious<CR>', options)

--  Quick window switching
keymap('n', '<leader>j', '<C-w><C-j>', options)
keymap('n', '<leader>k', '<C-w><C-k>', options)

-- better window movement
-- keymap('n', '<C-h>', '<C-w>h', {silent = true})
-- keymap('n', '<C-j>', '<C-w>j', {silent = true})
-- keymap('n', '<C-k>', '<C-w>k', {silent = true})
-- keymap('n', '<C-l>', '<C-w>l', {silent = true})
