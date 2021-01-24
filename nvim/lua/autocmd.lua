-- Currently, there is no interface to create user commands in Lua. It is planned, though:
-- PR: https://github.com/neovim/neovim/pull/12378

-- Auto save files when focus is lost
-- vim.cmd("au FocusLost * :wa")
-- vim.cmd("au FocusLost * silent! wa")
--
vim.cmd('autocmd BufEnter * set cursorline')
vim.cmd('autocmd BufLeave * set nocursorline')
