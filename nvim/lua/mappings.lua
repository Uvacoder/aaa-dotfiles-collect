local keymap = vim.keymap.set
local opts = { silent = true }

--Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '

-- fix and format
keymap('n', '<C-f>', '<cmd>EslintFixAll<cr>', opts)

-- Resize with arrows
keymap('n', '<C-Up>', '<cmd>resize -2<CR>', opts)
keymap('n', '<C-Down>', '<cmd>resize +2<CR>', opts)
keymap('n', '<C-Left>', '<cmd>vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', '<cmd>vertical resize +2<CR>', opts)

-- Open the current file in the default program
keymap('n', '<leader>x', '<cmd>!open %<cr><cr>', { expr = true })

--Rekeymap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- buffers navigation
keymap('n', '=', '<PageDown>', opts)
keymap('n', '-', '<PageUp>', opts)

-- delete buffer
keymap('n', '<C-x>', '<cmd>bd<CR>', opts)

-- fold unfold html
keymap('n', '<leader>fc', '<cmd>foldclose<cr>', opts)
keymap('n', '<leader>fo', '<cmd>foldopen<cr>', opts)

-- select all
keymap('n', '<leader>sa', 'ggVG', opts)

-- save and close
keymap('n', '<C-w>', '<cmd>w<CR>', opts)
keymap('n', '<C-q>', '<cmd>q<CR>', opts)

-- search and replace
keymap('n', 'rr', '<cmd>%s///gcI<Left><Left><Left><Left><Left>', { expr = false, silent = false })
keymap('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR><Esc>', opts)

--Add move line shortcuts
keymap('n', '<S-j>', '<cmd>m .+1<CR>==', opts)
keymap('n', '<S-k>', '<cmd>m .-2<CR>==', opts)
keymap('v', '<S-j>', "<cmd>m '>+1<CR>gv=gv", opts)
keymap('v', '<S-k>', "<cmd>m '<-2<CR>gv=gv", opts)

-- Better indenting
keymap('v', '<TAB>', '>gv', opts)
keymap('v', '<S-TAB>', '<gv', opts)

-- Better navigation
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Tab switch buffer
keymap('n', '<TAB>', '<cmd>bnext<CR>', opts)
keymap('n', '<S-TAB>', '<cmd>bprevious<CR>', opts)

-- print console.log(variable)
keymap('n', '<C-l>', '<cmd>call printLogVariable()<CR>', opts)
