local execute = vim.api.nvim_exec
local cmd = vim.cmd

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')

cmd("autocmd InsertEnter * set cul")
cmd("autocmd InsertLeave * set nocul")

-- Auto save files when focus is lost
cmd("autocmd FocusLost * silent! :wa!")
cmd("autocmd TermOpen * setlocal signcolumn=no nonumber norelativenumber")

execute([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup END
]], "")

execute([[
  augroup updateColors
    autocmd!
    autocmd ColorScheme * lua require('config.colors').myColors()
  augroup END
]], "")
