local o = vim.o
local bo = vim.bo
local wo = vim.wo
local cmd = vim.cmd
local fn = vim.fn

local shiftwidth = 2

wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false
wo.list = true

bo.shiftwidth = shiftwidth
bo.softtabstop = shiftwidth
bo.autoindent = true

o.encoding = 'UTF-8'
o.background = 'dark'
o.compatible = false
o.hidden = true
o.updatetime = 100
o.showcmd = false
o.showmode = false
o.cursorline = true
o.number = true
o.relativenumber = true
o.wrap = false
o.expandtab = true
o.joinspaces = false
o.shiftwidth = shiftwidth
o.softtabstop = shiftwidth
o.clipboard = 'unnamedplus'
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true
o.autoread = true
o.autowrite = true
o.swapfile = false
o.backup = false
o.writebackup = false
o.completeopt = 'menuone,noinsert,noselect,preview'
o.shell = '/usr/local/bin/zsh'
o.errorformat = '%A%f:%l:%c:%m,%-G%.%#'
o.shortmess = 'aoOTIcF'
o.undofile = true
o.undodir = vim.fn.expand(vim.fn.stdpath('data') .. '/undodir//')

if vim.fn.isdirectory(o.undodir) == 0 then
  vim.fn.mkdir(o.undodir, 'p')
end

if vim.fn.has('termguicolors') == 1 then
  vim.cmd('let &t_8f = "\\<Esc>[38;2;%lu;%lu;%lum"')
  cmd('let &t_8b = "\\<Esc>[48;2;%lu;%lu;%lum"')
  o.termguicolors = true
end
