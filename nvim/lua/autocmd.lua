local cmd = vim.cmd

cmd('autocmd BufEnter * set cursorline')
cmd('autocmd BufLeave * set nocursorline')

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
