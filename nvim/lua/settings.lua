local wo = vim.wo
local o = vim.o
local bo = vim.bo
local g = vim.g
local fn = vim.fn

-- main
o.encoding = 'UTF-8'

g.syntax_on = true
g.vue_pre_processors = {}

g.my_colors = {
  bg = '#000000',
  grey = '#D8DDE9',
  yellow = '#FECA5C',
  orange = '#FF8B4B',
  red = '#F84B5E',
  magenta = '#CC8CC4',
  blue = '#6197CE',
  cyan = '#4AB6B5',
  green = '#8FCC95',
  black = '#343d46'
}

o.compatible = false

o.hidden = true
o.timeoutlen = 500
o.updatetime = 100
o.ttyfast = true
o.scrolloff = 8

o.showcmd = false
o.showmode = false
o.wildmenu = true

wo.number = true
o.number = true
wo.relativenumber = true
o.relativenumber = true
wo.signcolumn = 'yes'

wo.wrap = false
o.wrap = false

o.expandtab = true
bo.expandtab = true
o.shiftwidth = 2
bo.shiftwidth = 2
-- when 'sts' is negative, the value of 'shiftwidth' is used.
o.softtabstop = -1
bo.softtabstop = -1
o.autoindent = true
bo.autoindent = true

o.clipboard = 'unnamedplus'

bo.textwidth = 300
bo.formatoptions = 'qrn1'

o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

o.autoread = true
o.swapfile = false

o.backup = false
o.writebackup = false
o.cursorline = true

o.shortmess = o.shortmess .. 'iac'
o.listchars = 'eol:↲,tab:»\\ ,trail:•'
o.showbreak = '↳'
o.foldenable = true
o.foldcolumn = '1'
o.foldlevelstart = 99
o.completeopt = 'menuone,noinsert,noselect'
-- undo
o.undofile = true
o.undodir = fn.expand(fn.stdpath('data') .. '/undodir//')
if fn.isdirectory(o.undodir) == 0 then fn.mkdir(o.undodir, 'p') end

o.shell = '/usr/local/bin/zsh'

-- interactive substitute
-- o.inccommand = 'split'

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

o.wildignore = wildignore
o.wildignorecase = true
--wildcharm requires integer for the character, 26 is ascii code for 'c-z'
o.wildcharm=26
o.wildmenu=true
o.wildmode='longest:full,full'

-- For highlighting yanked region
-- cmd[[ au TextYankPost * silent! lua highlight.on_yank({ higroup = 'HighlightedyankRegion', timeout = 120 }) ]]

-- for searching files with location list
o.errorformat = o.errorformat .. ',%f'
