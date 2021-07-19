vim.api.nvim_exec([[
  augroup removeBgColors
    autocmd!
    autocmd ColorScheme * lua require('config.cs._fix').removeBgColor()
  augroup END
]], "")

vim.g.oceanic_next_terminal_bold = 1
vim.g.oceanic_next_terminal_italic = 1

vim.cmd("colorscheme OceanicNext")

