vim.cmd[[ filetype plugin indent on ]]

vim.g.mapleader = ' '
vim.g.syntax_on = true
vim.g.vue_pre_processors = {}

if vim.fn.has('termguicolors') == 1 then
  vim.o.termguicolors = true
  vim.o.guicursor = 'n-v-c-sm:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20'
end

vim.o.background = 'dark'
-- vim.g.colors_name = 'spaceduck'
-- vim.g.colors_name = 'palenight'
-- vim.g.colors_name = 'zephyr'
vim.g.colors_name = 'OceanicNext'

vim.g.my_colors = {
  -- bg = '#1C1936',
  bg = '#343d46',
  grey = '#D8DDE9',
  yellow = '#FECA5C',
  orange = '#FF8B4B',
  red = '#F84B5E',
  magenta = '#CC8CC4',
  blue = '#6197CE',
  cyan = '#4AB6B5',
  green = '#8FCC95',
  black = '#000000'
}

vim.o.compatible = false
vim.o.encoding = 'UTF-8'

vim.o.hidden = true
vim.o.timeoutlen = 500
vim.o.updatetime = 100
vim.o.ttyfast = true
vim.o.scrolloff = 8

vim.o.showcmd = false
vim.o.showmode = false
vim.o.wildmenu = true

vim.wo.number = true
vim.o.number = true
vim.wo.relativenumber = true
vim.o.relativenumber = true
vim.wo.signcolumn = 'yes'

vim.wo.wrap = false
vim.o.wrap = false

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- when 'sts' is negative, the value of 'shiftwidth' is used.
vim.o.softtabstop = -1
vim.bo.softtabstop = -1
vim.o.autoindent = true
vim.bo.autoindent = true

vim.o.clipboard = 'unnamedplus'

vim.bo.textwidth = 300
vim.bo.formatoptions = 'qrn1'

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.autoread = true
vim.o.swapfile = false

vim.o.backup = false
vim.o.writebackup = false
vim.o.cursorline = true

vim.o.shortmess = vim.o.shortmess .. 'aIc'
vim.o.listchars = 'eol:↲,tab:»\\ ,trail:•'
vim.o.showbreak = '╰─➤'
vim.o.foldenable = true
vim.o.foldcolumn = '1'
vim.o.foldlevelstart = 99
vim.o.completeopt = 'menu,menuone,noinsert,noselect'
-- undo
vim.o.undofile = true
vim.o.undodir = vim.fn.expand(vim.fn.stdpath('data') .. '/undodir//')
if vim.fn.isdirectory(vim.o.undodir) == 0 then vim.fn.mkdir(vim.o.undodir, 'p') end

vim.o.shell = '/usr/local/bin/zsh'

-- interactive substitute
vim.o.inccommand = 'split'

local wildignored = {
  'tags',
  '*/__pycache__/*',
  'build/*',
  'build.?/*',
  '*/node_modules/*',
  '*/env/*',
  '*.png',
  '*.jpg',
  '*.jpeg',
  '*/migrations/*',
  '*/.git/*'
}

local wildignore = ''
for i=1,#wildignored do
  wildignore = wildignore .. wildignored[i] .. ','
end

vim.o.wildignore = wildignore
vim.o.wildignorecase = true
--wildcharm requires integer for the character, 26 is ascii code for 'c-z'
vim.o.wildcharm=26
vim.o.wildmenu=true
vim.o.wildmode='longest:full,full'

-- For highlighting yanked region
-- vim.cmd[[ au TextYankPost * silent! lua vim.highlight.on_yank({ higroup = 'HighlightedyankRegion', timeout = 120 }) ]]

-- for searching files with location list
vim.o.errorformat = vim.o.errorformat .. ',%f'
