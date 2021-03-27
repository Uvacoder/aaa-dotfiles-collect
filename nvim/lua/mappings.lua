local keymap = vim.api.nvim_set_keymap
local options = {noremap = true, silent = true}

function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
    return true
  else
    return false
  end
end

keymap('n', '<Space>', '<NOP>', options)
vim.g.mapleader = ' '

keymap('i', '<TAB>', 'pumvisible() ? "<C-N>" : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', { noremap = true, silent = true, expr = true })
keymap('i', '<S-TAB>', 'pumvisible() ? "<C-P>" : "<C-H>"', { noremap = true, silent = true, expr = true })
keymap('i', '<C-SPACE>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-G>u<CR><C-R>=coc#on_enter()<CR>"', { noremap = true, silent = true, expr = true })

keymap('n', '<C-p>', ':Telescope find_files<cr>', options)
keymap('n', '<C-g>', ':Telescope live_grep<cr>', options)
keymap('n', '<C-b>', ':Telescope buffers<cr>', options)

keymap('n', '<C-e>', ':NvimTreeToggle<CR>', options)
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', options)
keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', options)

keymap("n", "<leader>/", ":CommentToggle<CR>", options)
keymap("v", "<leader>/", ":CommentToggle<CR>", options)

-- buffers navigation
keymap('n', '<Space>', '<PageDown>', options)
keymap('n', '-', '<PageUp>', options)

-- select all
keymap('n', '<Leader>sa', 'ggVG', options)

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

--  Quick window switching
keymap('n', '<leader>j', '<C-w><C-j>', options)
keymap('n', '<leader>k', '<C-w><C-k>', options)

-- better window movement
keymap('n', '<C-h>', '<C-w>h', {silent = true})
keymap('n', '<C-j>', '<C-w>j', {silent = true})
keymap('n', '<C-k>', '<C-w>k', {silent = true})
keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- I hate escape
keymap('i', 'jk', '<ESC>', options)
keymap('i', 'kj', '<ESC>', options)
keymap('i', 'jj', '<ESC>', options)

-- Tab switch buffer
keymap('n', '<TAB>', ':bnext<CR>', options)
keymap('n', '<S-TAB>', ':bprevious<CR>', options)

