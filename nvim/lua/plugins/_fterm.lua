require('FTerm').setup({
  dimensions  = {
    height = 0.8,
    width = 0.8,
    row = 0.5,
    col = 0.5
  }
})

vim.fn.nvim_set_keymap('n', '<C-t>', ':FTermToggle<CR>', { noremap = true, silent = true })
vim.fn.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:FTermToggle<CR>', { noremap = true, silent = true })
vim.fn.nvim_set_keymap('t', '<C-q>', '<C-\\><C-n>:FTermClose<CR>', { noremap = true, silent = true })
