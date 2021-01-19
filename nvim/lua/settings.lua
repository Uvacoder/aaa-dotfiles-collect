local opt = require('helpers').opt

local shiftwidth = 2

opt('wo', 'number', true)
opt('wo', 'relativenumber', true)
opt('wo', 'signcolumn', 'yes')
opt('wo', 'wrap', false)

opt('bo', 'expandtab', true)
opt('bo', 'shiftwidth', shiftwidth)
opt('bo', 'softtabstop', shiftwidth)
opt('bo', 'autoindent', true)
opt('bo', 'textwidth', 300)
opt('bo', 'formatoptions', 'qrn1')

opt('o', 'encoding', 'UTF-8')
opt('o', 'background', 'dark')
opt('o', 'compatible', false)
opt('o', 'hidden', true)
opt('o', 'updatetime', 100)
opt('o', 'ttyfast', true)
opt('o', 'scrolloff', 8)
opt('o', 'showcmd', false)
opt('o', 'showmode', false)
opt('o', 'wildmenu', true)
opt('o', 'number', true)
opt('o', 'relativenumber', true)
opt('o', 'wrap', false)
opt('o', 'expandtab', true)
opt('o', 'shiftwidth', shiftwidth)
opt('o', 'softtabstop', shiftwidth)
opt('o', 'autoindent', true)
opt('o', 'clipboard', 'unnamedplus')
opt('o', 'hlsearch', true)
opt('o', 'incsearch', true)
opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)
opt('o', 'autoread', true)
opt('o', 'swapfile', false)
opt('o', 'backup', false)
opt('o', 'writebackup', false)
opt('o', 'cursorline', true)
opt('o', 'shortmess', 'c')
opt('o', 'listchars', 'eol:↲,tab:»\\ ,trail:•')
opt('o', 'showbreak', '↳\\ ')
opt('o', 'foldenable', true)
opt('o', 'foldcolumn', '1')
opt('o', 'foldlevelstart', 99)
opt('o', 'completeopt', 'menuone,noinsert,noselect')
opt('o', 'shell', '/usr/local/bin/zsh')
opt('o', 'inccommand', 'split')
opt('o', 'wildignorecase', true)
opt('o', 'wildcharm', 26)
opt('o', 'wildmenu', true)
opt('o', 'wildmode', 'longest:full,full')
opt('o', 'errorformat', vim.o.errorformat .. ',%f')
opt('o', 'undofile', true)

local undodir = vim.fn.expand(vim.fn.stdpath('data') .. '/undodir//')
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, 'p')
end
opt('o', 'undodir', undodir)

local wildignored = { '*/node_modules/*', '*.png', '*.jpg', '*.jpeg', '*/.git/*' }
local wildignore = ''
for i=1,#wildignored do
  wildignore = wildignore .. wildignored[i] .. ','
end
opt('o', 'wildignore', wildignore)

if vim.fn.has('termguicolors') == 1 then
  opt('o', 'termguicolors', true)
end

