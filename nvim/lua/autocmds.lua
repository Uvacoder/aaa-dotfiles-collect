vim.cmd [[au! BufRead,BufNewFile *.astro set filetype=astro]]

vim.api.nvim_create_augroup('AutoUpdatePlugins', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile',
  group = 'AutoUpdatePlugins',
})

vim.api.nvim_create_augroup('Highlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  command = "silent! lua vim.highlight.on_yank() {higroup='IncSearch', timeout=400}",
  group = 'Highlight',
})

-- local format = vim.api.nvim_create_augroup('format', { clear = true })
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   command = 'EslintFixAll',
--   pattern = '*.ts,*.tsx,*.js,*.jsx,*.vue,*.astro',
--   group = format,
-- })
--
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   callback = vim.lsp.buf.formatting,
--   pattern = '*.astro',
--   group = format,
-- })

-- auto-wrap comments, don't auto insert comment on o/O and enter
vim.api.nvim_create_autocmd('FileType', {
  command = 'set formatoptions-=cro',
})

-- autocmd BufWritePre *.lua FormatLua
-- autocmd BufWritePost * FormatWrite

vim.cmd([[
:command! WQ wq
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

augroup neovim_terminal
  autocmd!
  autocmd TermOpen * startinsert
  autocmd TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
augroup end

augroup _general_settings
  autocmd!
  autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
  autocmd BufWinEnter * :set formatoptions-=cro
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
augroup end
]])
