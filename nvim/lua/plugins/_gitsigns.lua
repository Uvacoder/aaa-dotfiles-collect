local color = vim.g.my_colors

require('gitsigns').setup({
  signs = {
    add          = {hl = 'DiffAdd'   , text = '▋', numhl='GitSignsAddNr'},
    change       = {hl = 'DiffChange', text = '▋', numhl='GitSignsChangeNr'},
    delete       = {hl = 'DiffDelete', text = '▋', numhl='GitSignsDeleteNr'},
    topdelete    = {hl = 'DiffDelete', text = '▋', numhl='GitSignsDeleteNr'},
    changedelete = {hl = 'DiffChange', text = '▋', numhl='GitSignsChangeNr'},
  },
  sign_priority = 5,
})

vim.api.nvim_command('hi! DiffAdd guibg=' .. color.bg .. ' guifg=' .. color.green)
vim.api.nvim_command('hi! DiffChange guibg=' .. color.bg .. ' guifg=' .. color.yellow)
vim.api.nvim_command('hi! DiffDelete guibg=' .. color.bg .. ' guifg=' .. color.red)

