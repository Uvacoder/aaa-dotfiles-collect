local cmd = vim.cmd

cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')

-- Auto save files when focus is lost
cmd("autocmd FocusLost * silent! :wa!")
cmd("autocmd TermOpen * setlocal signcolumn=no nonumber norelativenumber")

vim.api.nvim_exec([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup END
]], "")


-- vim.api.nvim_exec([[
--   augroup vimrc
--     au BufReadPre * setlocal foldmethod=indent
--     au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
--   augroup END
-- ]], "")

