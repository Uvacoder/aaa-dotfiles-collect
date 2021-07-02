local keymap = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

keymap('n', '<Space>', '<NOP>', options)

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

-- Trouble
keymap("n", "<leader>xx", "<cmd>Trouble<cr>", options)
keymap("n", "<leader>xw", "<cmd>Trouble lsp_workspace_diagnostics<cr>", options)
keymap("n", "<leader>xd", "<cmd>Trouble lsp_document_diagnostics<cr>", options)
keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", options)
keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", options)
keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", options)

-- RestNvim
keymap("n", "<C-a>", "<Plug>RestNvim", {noremap = false})
