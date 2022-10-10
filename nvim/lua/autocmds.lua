-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Use 'q' to quit from common plugins
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = { 'terminal', 'qf', 'help', 'man', 'lspinfo', 'spectre_panel', 'lir' },
  callback = function()
    vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]])
  end,
})

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = { 'gitcommit', 'markdown' },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

vim.api.nvim_create_autocmd('BufRead', {
  pattern = '*.astro',
  command = 'set filetype=astro',
})

vim.api.nvim_create_autocmd('CursorHold', {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { 'BufLeave', 'CursorMoved', 'InsertEnter', 'FocusLost' },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end,
})

-- Fixes Autocomment
vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
  callback = function()
    vim.cmd('set formatoptions-=cro')
  end,
})

-- Highlight Yanked Text
vim.api.nvim_create_autocmd({ 'TextYankPost' }, {
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
  end,
})

local format = vim.api.nvim_create_augroup('format', { clear = true })
vim.api.nvim_create_autocmd('BufWritePre', {
  command = 'EslintFixAll',
  pattern = '*.ts,*.tsx,*.js,*.jsx,*.vue,*.astro,*.mjs',
  group = format,
})
vim.api.nvim_create_autocmd('BufWritePre', {
  command = 'FormatLua',
  pattern = '*.lua',
  group = format,
})

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


highlight! DiagnosticLineNrError guifg=#FF0000 guibg=None gui=bold
highlight! DiagnosticLineNrWarn  guifg=#FFC600 guibg=None gui=bold
highlight! DiagnosticLineNrInfo  guifg=#0088FF guibg=None gui=bold
highlight! DiagnosticLineNrHint  guifg=#A400FF guibg=None gui=bold

sign define DiagnosticSignError text= texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
sign define DiagnosticSignWarn  text= texthl=DiagnosticSignWarn  linehl= numhl=DiagnosticLineNrWarn
sign define DiagnosticSignInfo  text= texthl=DiagnosticSignInfo  linehl= numhl=DiagnosticLineNrInfo
sign define DiagnosticSignHint  text= texthl=DiagnosticSignHint  linehl= numhl=DiagnosticLineNrHint

]])
