require("options.builtins")
require("options.providers")

local opt = vim.opt
opt.title = true
opt.lazyredraw = true
opt.titlestring = "%f %m"
opt.background = "dark"
opt.autoread = true
opt.autowrite = true
opt.backup = false
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.completeopt = { "menu", "menuone", "noselect" }
opt.conceallevel = 0
opt.fileencoding = "utf-8"
opt.hlsearch = true
opt.ignorecase = true
opt.lazyredraw = true
opt.showmode = false
opt.showtabline = 0
opt.laststatus = 3
opt.cmdheight = 1
opt.smartcase = true
opt.smartindent = true
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.timeoutlen = 1000
opt.undofile = true
opt.updatetime = 300
opt.writebackup = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.cursorline = true
opt.number = true
opt.relativenumber = false
opt.shell = "/bin/zsh"
opt.showcmd = false
opt.ruler = false
opt.foldcolumn = "0"
opt.foldlevel = 20
opt.foldenable = true
opt.foldmethod = "indent"
opt.numberwidth = 3
opt.whichwrap = "h,l,<,>,[,],~"
-- opt.wrap = false
-- opt.linebreak = false
opt.wrap = true
opt.linebreak = true
opt.breakindentopt = "shift:2,min:20"
opt.textwidth = 100
opt.showbreak = " ↳  "
opt.colorcolumn = "101"
opt.signcolumn = "yes:1"
-- opt.scrolloff = 8
-- opt.sidescrolloff = 8
opt.pumheight = 15
opt.helpheight = 15
opt.previewheight = 15
opt.signcolumn = "yes"
opt.visualbell = true
opt.errorbells = false
opt.list = true
opt.listchars = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←"
opt.fillchars = "diff:∙,eob: ,fold:·,vert:│,foldopen:▾,foldsep:│,foldclose:▸"
opt.shortmess = "aoOTIcF"
opt.whichwrap = "h,l,<,>,[,],~"
opt.iskeyword:append(".")

if vim.fn.has("termguicolors") == 1 then
  opt.termguicolors = true -- set term gui colors (most terminals support this)
end

vim.cmd([[ let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0 ]])
