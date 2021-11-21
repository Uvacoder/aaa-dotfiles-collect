-------------
-- autocmd --
-------------

vim.cmd(":command! WQ wq")
vim.cmd(":command! WQ wq")
vim.cmd(":command! Wq wq")
vim.cmd(":command! Wqa wqa")
vim.cmd(":command! W w")
vim.cmd(":command! Q q")

-- vim.api.nvim_exec("autocmd InsertEnter * set cul", "")
-- vim.api.nvim_exec("autocmd InsertLeave * set nocul", "")

-- Auto save files when focus is lost
vim.cmd([[autocmd FocusLost * silent! :wa!]])
vim.cmd([[autocmd TermOpen * setlocal signcolumn=no nonumber norelativenumber]])

vim.cmd([[
  augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
  augroup end
]])

-- TrimWhitespace on save
vim.cmd([[
  fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
  endfun
  autocmd BufWritePre * if !&binary && &ft !=# 'mail' | call TrimWhitespace() | endif
]])

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
  autocmd!
  autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])
