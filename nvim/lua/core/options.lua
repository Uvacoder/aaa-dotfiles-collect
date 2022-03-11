vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python_provider = 0

vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

------------- -- options --
-------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.spell = false
vim.opt.spelllang = { "en_us" }
vim.opt.signcolumn = "yes"
vim.opt.autoindent = true
vim.opt.encoding = "UTF-8"
vim.opt.background = "dark"
vim.opt.compatible = false
vim.opt.cmdheight = 1
vim.opt.conceallevel = 0 -- So that I can see `` in markdown files
vim.opt.hidden = true
vim.opt.updatetime = 100
vim.opt.showcmd = false
vim.opt.showmode = false
vim.opt.cursorline = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.joinspaces = false
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.completeopt = "menuone,noinsert,noselect,preview"
vim.opt.shell = "/bin/zsh"
-- vim.opt.errorformat = "%A%f:%l:%c:%m,%-G%.%#"
vim.opt.showbreak = "﬌ "
vim.opt.inccommand = "split" -- incrementally show result of command
vim.opt.wildignore = "*/.git/*,*/.DS_Store,dist,*.o,*~,package-lock.json"
vim.opt.list = true
vim.opt.listchars = "tab:→ ,nbsp:•,trail:•,precedes:«,extends:»"
-- vim.opt.fillchars:append({ eob = " ", vert = " " })
vim.opt.fillchars:append({ eob = " " })
vim.opt.wildignorecase = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand(vim.fn.stdpath("data") .. "/undodir//")
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldmethod = "manual"
vim.opt.formatoptions = "l"
vim.opt.shortmess:append("aoOtAIc")
-- vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor25-Cursor"

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

-- Error formate
vim.opt.errorformat = [[
    %E%f:%l:%c: %trror: %m,%-Z%p^,%+C%.%#
    %D%*a: Entering directory [`']%f
    %X%*a: Leaving directory [`']%f
    %-G%.%#
]]

local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
