local options = {noremap = true, silent = true, expr = false}

vim.api.nvim_set_keymap('i', '<C-c>', '<esc>', options)
vim.api.nvim_set_keymap('n', '<C-q>', ':wq!<CR>', options)

-- search and replace
vim.api.nvim_set_keymap('n', '<C-h>', ':%s///<left><left>', {noremap = true, expr = false})
vim.api.nvim_set_keymap('n', '<Esc><Esc><Esc>', ':nohlsearch<CR><Esc>', options)

-- move lines
vim.api.nvim_set_keymap('v', '<S-K>', ":m '<-2<CR>gv=gv", options)
vim.api.nvim_set_keymap('v', '<S-J>', ":m '>+1<CR>gv=gv", options)
vim.api.nvim_set_keymap('v', '<S-L>', '>gv', options)
vim.api.nvim_set_keymap('v', '<S-H>', '<gv', options)

-- Better indenting
vim.api.nvim_set_keymap('v', '<TAB>', '>gv', options)
vim.api.nvim_set_keymap('v', '<S-TAB>', '<gv', options)

--  Quick window switching
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w><C-j>', options)
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w><C-k>', options)
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w><C-l>', options)
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w><C-h>', options)

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
vim.api.nvim_set_keymap('o', 'A', ':<C-U>normal! ggVG<CR>', options)

