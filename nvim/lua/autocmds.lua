local autocmd = vim.api.nvim_create_autocmd
 
-- Use 'q' to quit from common plugins
autocmd({ 'FileType' }, {
  pattern = { 'terminal', 'qf', 'help', 'man', 'lspinfo', 'spectre_panel', 'lir' },
  callback = function()
    vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
  end,
}) 
  
-- Set wrap and spell in markdown and gitcommit
autocmd({ 'FileType' }, {
  pattern = { 'gitcommit', 'markdown' },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
}) 
  
autocmd('BufRead', {
  pattern = '*.astro',
  command = 'set filetype=astro',
}) 
  
autocmd('CursorHold', {
  buffer = bufnr,
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter', 'FocusLost' },
      border = vim.g.border_style,
    })
  end,
}) 
  
-- Fixes Autocomment
autocmd({ 'BufWinEnter' }, {
  callback = function()
    vim.cmd('set formatoptions-=cro')
  end,
})
  
-- Highlight Yanked Text
autocmd({ 'TextYankPost' }, {
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
  end,
})
  
-- local formatgrp = vim.api.nvim_create_augroup('format', { clear = true })
-- autocmd('BufWritePre', {
--   command = 'EslintFixAll',
--   pattern = '*.ts,*.tsx,*.js,*.jsx,*.vue,*.astro,*.mjs,*.cjs',
--   group = formatgrp,
-- })
  
-- autocmd("BufWritePre", {
--   callback = function()
--     require("stylua-nvim").format_file()
--   end,
--   pattern = "*.lua",
--   group = formatgrp,
-- })

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.cmd([[
function! s:printLogVariable()
  let string_under_cursor = expand("<cword>")
  execute "normal! o"
  execute "normal! i" . "console.log(' [DEBUG] " . string_under_cursor ": ', " . string_under_cursor . ");"
endfunction
]])
 
vim.cmd([[
:command! WQ wq
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

augroup _general_settings
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup end
]])
