-------------
-- options --
-------------
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
vim.opt.numberwidth = 1
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
vim.opt.errorformat = "%A%f:%l:%c:%m,%-G%.%#"
vim.opt.showbreak = "﬌ "
vim.opt.inccommand = "split" -- incrementally show result of command
vim.opt.wildignore = "*/.git/*,*/.DS_Store,dist,*.o,*~,package-lock.json"
vim.opt.list = true
vim.opt.listchars = "tab:→ ,nbsp:•,trail:•,precedes:«,extends:»"
vim.opt.wildignorecase = true
vim.opt.undofile = true
vim.opt.undodir = vim.fn.expand(vim.fn.stdpath("data") .. "/undodir//")
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldmethod = "manual"
vim.opt.formatoptions = "l"
vim.opt.shortmess:append("filmnrxoOtTAIc")

if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor25-Cursor"

-- vim.opt.shortmess = vim.opt.shortmess + "f"	   -- Use "(3 of 5)" instead of "(file 3 of 5)"
-- vim.opt.shortmess = vim.opt.shortmess + "i"	   -- Use "[noeol]" instead of "[Incomplete last line]"
-- vim.opt.shortmess = vim.opt.shortmess + "l"	   -- Use "999L, 888C" instead of "999 lines, 888 characters"
-- vim.opt.shortmess = vim.opt.shortmess + "m"       -- Use "[+]" instead of "[Modified]"
-- vim.opt.shortmess = vim.opt.shortmess + "n"	   -- Use "[New]" instead of "[New File]"
-- vim.opt.shortmess = vim.opt.shortmess + "r"	   -- Use "[RO]" instead of "[readonly]"
-- vim.opt.shortmess = vim.opt.shortmess + "x"	   -- Use "[dos]" instead of "[dos format]", "[unix]" instead of [unix format]" and "[mac]" instead of "[mac format]".
-- -- set shortmess+=a	   " All of the above abbreviations
-- vim.opt.shortmess = vim.opt.shortmess + "o"	   -- Overwrite message for writing a file with subsequent message for reading a file (useful for ":wn" or when 'autowrite' on)
-- vim.opt.shortmess = vim.opt.shortmess + "O"	   -- Message for reading a file overwrites any previous message.  Also for quickfix message (e.g., ":cn").
-- vim.opt.shortmess = vim.opt.shortmess + "t"       -- Truncate file message at the start if it is too long to fit on the command-line, "<" will appear in the left most column.  Ignored in Ex mode.
-- vim.opt.shortmess = vim.opt.shortmess + "T"	   -- Truncate other messages in the middle if they are too long to fit on the command line.  "..." will appear in the middle.  Ignored in Ex mode.
-- vim.opt.shortmess = vim.opt.shortmess + "A"	   -- Don't give the "ATTENTION" message when an existing swap file is found.
-- vim.opt.shortmess = vim.opt.shortmess + "I"	   -- Don't give the intro message when starting Vim |:intro|.
-- vim.opt.shortmess = vim.opt.shortmess + "c"       -- Avoid showing message extra message when using completion
