vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python_provider = 0

vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

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
-- vim.opt.listchars = "tab:→ ,nbsp:•,trail:•,precedes:«,extends:»"
-- vim.opt.fillchars:append({ eob = " ", vert = " " })
-- vim.opt.fillchars:append({ eob = " " })
vim.opt.listchars = {
  nbsp = "⦸", -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
  extends = "»", -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
  precedes = "«", -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
  tab = "  ", -- '▷─' WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
  trail = "•", -- BULLET (U+2022, UTF-8: E2 80 A2)
  space = " ",
}

vim.opt.fillchars = {
  diff = "∙", -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
  eob = " ", -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
  fold = "·", -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
  vert = "│", -- window border when window splits vertically
  horiz = "─",
  horizup = "┴",
  horizdown = "┬",
  vertleft = "┤",
  vertright = "├",
  verthoriz = "┼",
}
vim.opt.wildignorecase = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand(vim.fn.stdpath("data") .. "/undodir//")
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldmethod = "manual"
vim.opt.formatoptions = "l"
vim.opt.shortmess:append("c")
-- vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor25-Cursor"

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

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

vim.cmd("setlocal formatoptions-=cro")
vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd([[set iskeyword+=-]])