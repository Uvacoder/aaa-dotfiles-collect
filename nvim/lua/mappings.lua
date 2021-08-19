local keymap = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

keymap('n', '<Space>', '<NOP>', options)

-- keymap("n", "<Leader>bd", "<cmd>Bdelete<CR>", options)
-- keymap("n", "<Leader>q", "<cmd>qall<CR>",options)

-- keymap("n", "<C-_>", "<cmd>Commentary<CR>", options)
-- keymap("v", "<C-_>", "<cmd>Commentary<CR>", options)

-- buffers navigation
keymap('n', '=', '<PageDown>', options)
keymap('n', '-', '<PageUp>', options)

-- select all
keymap('n', 'sa', 'ggVG', options)

-- I hate escape
keymap('i', 'jk', '<ESC>', options)
keymap('i', 'kj', '<ESC>', options)
keymap('i', 'jj', '<ESC>', options)
keymap('t', 'jj', '<ESC>', options)

keymap('n', 'ss', ':w<CR>', options)
keymap('i', '<C-s>', '<esc>:w<CR>', options)
keymap('n', 'qq', ':q<CR>', options)
keymap('n', '<C-q>', ':q<CR>', options)

-- search and replace
keymap('n', 'hh', ':%s///gcI<Left><Left><Left><Left><Left>', {noremap = true, expr = false, silent = false})
keymap('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR><Esc>', options)

-- move lines:
keymap('v', '<S-K>', ":m '<-2<CR>gv=gv", options)
keymap('v', '<S-J>', ":m '>+1<CR>gv=gv", options)
keymap('v', '<S-L>', '>gv', options)
keymap('v', '<S-H>', '<gv', options)

-- Better indenting
keymap('v', '<TAB>', '>gv', options)
keymap('v', '<S-TAB>', '<gv', options)

-- Tab switch buffer
keymap('n', '<TAB>', '<cmd>bnext<CR>', options)
keymap('n', '<S-TAB>', '<cmd>bprevious<CR>', options)

--  Quick window switching
keymap('n', '<leader>j', '<C-w><C-j>', options)
keymap('n', '<leader>k', '<C-w><C-k>', options)

-- Trouble
keymap("n", "xx", "<cmd>Trouble<cr>", options)
keymap("n", "xl", "<cmd>Trouble loclist<cr>", options)
keymap("n", "xf", "<cmd>Trouble quickfix<cr>", options)

-- RestNvim
-- keymap("n", "<C-a>", "<Plug>RestNvim", {noremap = false})
