--------------
-- mappings --
--------------

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap=true, silent=true })

-- buffers navigation
vim.api.nvim_set_keymap('n', '=', '<PageDown>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '-', '<PageUp>', { noremap=true, silent=true })

-- select all
vim.api.nvim_set_keymap('n', '<S-A>', 'ggVG', { noremap=true, silent=true })


vim.api.nvim_set_keymap('n', 'ss', ':w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-s>', '<esc>:w<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', 'qq', ':q<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('i', '<C-q>', ':q<CR>', { noremap=true, silent=true })

-- search and replace
vim.api.nvim_set_keymap('n', 'hh', ':%s///gcI<Left><Left><Left><Left><Left>', {noremap = true, expr = false, silent = false})
vim.api.nvim_set_keymap('n', '<Esc><Esc><Esc>', '<cmd>nohlsearch<CR><Esc>', { noremap=true, silent=true })

--Add move line shortcuts
vim.api.nvim_set_keymap('n', '<S-K>', ':m .-2<CR>==', { noremap = true})
vim.api.nvim_set_keymap('n', '<S-J>', ':m .+1<CR>==', { noremap = true})
vim.api.nvim_set_keymap('v', '<S-J>', ':m \'>+1<CR>gv=gv', { noremap = true})
vim.api.nvim_set_keymap('v', '<S-K>', ':m \'<-2<CR>gv=gv', { noremap = true})

-- Better indenting
vim.api.nvim_set_keymap('v', '<TAB>', '>gv', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '<S-TAB>', '<gv', { noremap=true, silent=true })

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', '<cmd>bnext<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<S-TAB>', '<cmd>bprevious<CR>', { noremap=true, silent=true })

--  Quick window switching
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w><C-j>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w><C-k>', { noremap=true, silent=true })

