local autocmd = vim.api.nvim_create_autocmd

local format = vim.api.nvim_create_augroup("format", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  command = "FormatLua",
  pattern = "*.lua",
  group = format,
})

-- Use 'q' to quit from common plugins
autocmd({ "FileType" }, {
  pattern = { "terminal", "qf", "help", "man", "lspinfo", "spectre_panel", "lir" },
  callback = function()
    vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
  end,
})

autocmd("BufRead", {
  pattern = "*.astro",
  command = "set filetype=astro",
})

autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    vim.diagnostic.open_float(nil, {
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    })
  end,
})

-- Fixes Autocomment
autocmd({ "BufWinEnter" }, {
  callback = function()
    vim.cmd("set formatoptions-=cro")
  end,
})

-- Highlight Yanked Text
autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  end,
})

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.cmd([[
:command! WQ wq
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q
]])

vim.cmd([[
function! s:printLogVariable()
  let string_under_cursor = expand("<cword>")
  execute "normal! o"
  execute "normal! i" . "console.log(' [DEBUG] " . string_under_cursor ": ', " . string_under_cursor . ");"
endfunction
]])

vim.cmd([[
augroup _general_settings
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup end
]])
