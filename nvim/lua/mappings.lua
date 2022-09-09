local map = require('utils').map
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Remap space as leader key
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- -- Open the current file in the default program
map('n', '<leader>x', ':!open %<cr><cr>', { expr = true })

--Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Y yank until the end of line  (note: this is now a default on master)
map('n', 'Y', 'y$')

-- buffers navigation
map('n', '=', '<PageDown>')
map('n', '-', '<PageUp>')

-- delete buffer
map('n', '<C-x>', ':bd<CR>')
map('n', '<leader>t', ':terminal<CR>')
map('n', '<leader>tc', ':bd!<CR>')

-- fold unfold html
map('n', '<leader>fc', '<cmd>foldclose<cr>')
map('n', '<leader>fo', '<cmd>foldopen<cr>')

-- select all
map('n', '<leader>aa', 'ggVG')

-- save and close
-- map("n", "<C-s>", ":w<CR>")
map('n', '<C-q>', ':q<CR>')

-- search and replace
map('n', 'rr', ':%s///gcI<Left><Left><Left><Left><Left>', { expr = false, silent = false })
map('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR><Esc>')

--Add move line shortcuts
map('n', '<S-j>', ':m .+1<CR>==')
map('n', '<S-k>', ':m .-2<CR>==')
map('v', '<S-j>', ":m '>+1<CR>gv=gv")
map('v', '<S-k>', ":m '<-2<CR>gv=gv")

-- Better indenting
map('v', '<TAB>', '>gv')
map('v', '<S-TAB>', '<gv')

-- Better navigation
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-l>', '<C-w>l')

-- Tab switch buffer
map('n', '<TAB>', '<cmd>bnext<CR>')
map('n', '<S-TAB>', '<cmd>bprevious<CR>')

-- print console.log(variable)
map('n', '<C-l>', '<cmd>call PrintVariable()<CR>')

vim.cmd([[
function! PrintVariable()
  let string_under_cursor = expand("<cword>")
  execute "normal! o"
  execute "normal! i" . "console.log(' [DEBUG] " . string_under_cursor ": ', " . string_under_cursor . ");"
endfunction
]])
