local opt = require('helpers').opt

local shiftwidth = 2

opt('wo', 'number', true)
opt('wo', 'relativenumber', true)
opt('wo', 'signcolumn', 'yes')
opt('wo', 'wrap', false)
opt('wo', 'list', true)

opt('bo', 'shiftwidth', shiftwidth)
opt('bo', 'softtabstop', shiftwidth)
opt('bo', 'autoindent', true)
opt('bo', 'formatoptions', 'qrn1')

opt('o', 'encoding', 'UTF-8')
opt('o', 'background', 'dark')
opt('o', 'compatible', false)
opt('o', 'hidden', true)
opt('o', 'updatetime', 100)
opt('o', 'showcmd', false)
opt('o', 'showmode', false)
opt('o', 'number', true)
opt('o', 'relativenumber', true)
opt('o', 'wrap', false)
opt('o', 'expandtab', true)
opt('o', 'joinspaces', false)
opt('o', 'shiftwidth', shiftwidth)
opt('o', 'softtabstop', shiftwidth)
opt('o', 'clipboard', 'unnamedplus')
opt('o', 'hlsearch', true)
opt('o', 'incsearch', true)
opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)
opt('o', 'autoread', true)
opt('o', 'swapfile', false)
opt('o', 'backup', false)
opt('o', 'writebackup', false)
opt('o', 'completeopt', 'menuone,noinsert,noselect')
opt('o', 'shell', '/usr/local/bin/zsh')
opt('o', 'errorformat', vim.o.errorformat .. ',%f')
opt('o', 'shortmess', vim.o.shortmess .. 'c')
opt('o', 'undofile', true)
opt('o', 'undodir', vim.fn.expand(vim.fn.stdpath('data') .. '/undodir//'))

if vim.fn.isdirectory(vim.o.undodir) == 0 then
  vim.fn.mkdir(vim.o.undodir, 'p')
end

if vim.fn.has('termguicolors') == 1 then
  opt('o', 'termguicolors', true)
end
