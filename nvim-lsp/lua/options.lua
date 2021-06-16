local shiftwidth = 2
vim.g.colorcolumn = {"+1"}
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.wrap = false
vim.wo.list = true

vim.bo.shiftwidth = shiftwidth
vim.bo.softtabstop = shiftwidth
vim.bo.autoindent = true

vim.o.encoding = "UTF-8"
vim.o.background = "dark"
vim.o.compatible = false
vim.o.cmdheight = 1
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.o.hidden = true
vim.o.updatetime = 100
vim.o.showcmd = false
vim.o.showmode = false
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.joinspaces = false
vim.o.shiftwidth = shiftwidth
vim.o.softtabstop = shiftwidth
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.autoread = true
vim.o.autowrite = true
vim.o.swapfile = false
vim.bo.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.completeopt = "menuone,noinsert,noselect,preview"
vim.o.shell = "/bin/zsh"
vim.o.errorformat = "%A%f:%l:%c:%m,%-G%.%#"
vim.o.showbreak = '﬌ '
-- vim.o.fillchars = "vert: ,eob: " -- make vertical split sign better
vim.opt.fillchars = {
  vert = " ", -- alternatives ▕│
  fold = " ",
  eob = " ", -- suppress ~ at EndOfBuffer
  diff = "╱", -- alternatives = ⣿ ░ ─
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸"
}
vim.o.inccommand = "split" -- incrementally show result of command
vim.o.wildignore = "*/.git/*,*/.DS_Store,dist,*.o,*~,package-lock.json"
vim.o.listchars = "tab:→ ,nbsp:␣,trail:•,precedes:«,extends:»"
vim.o.wildignorecase = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand(vim.fn.stdpath("data") .. "/undodir//")

vim.o.foldlevel = 99
-- vim.o.foldmethod = "marker" -- foldmethod using marker
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

if vim.fn.isdirectory(vim.o.undodir) == 0 then
  vim.fn.mkdir(vim.o.undodir, "p")
end

if vim.fn.has("termguicolors") == 1 then
  vim.cmd("let &t_8f = '\\<Esc>[38;2;%lu;%lu;%lum'")
  vim.cmd("let &t_8b = '\\<Esc>[48;2;%lu;%lu;%lum'")
  vim.o.termguicolors = true
end

vim.cmd('set iskeyword+=-')
vim.cmd('set formatoptions-=cro')
vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.cmd('set shortmess+=c')
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
vim.cmd('set foldlevel=99')

