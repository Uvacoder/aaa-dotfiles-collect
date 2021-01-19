local api = vim.api
local colors = vim.g.my_colors

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

api.nvim_command('hi DiffAdd guibg=NONE guifg='..colors.green)
api.nvim_command('hi DiffChange guibg=NONE guifg='..colors.orange)
api.nvim_command('hi DiffDelete guibg=NONE guifg='..colors.red)


