--------------
-- mappings --
--------------

--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Y yank until the end of line  (note: this is now a default on master)
vim.keymap.set("n", "Y", "y$", { noremap = true })

-- buffers navigation
vim.keymap.set("n", "=", "<PageDown>", { noremap = true, silent = true })
vim.keymap.set("n", "-", "<PageUp>", { noremap = true, silent = true })

-- delete buffer
vim.keymap.set("n", "<C-x>", ":bd<CR>", { noremap = true, silent = true })

-- fold unfold html
vim.keymap.set("n", "fc", "zfat", { noremap = true, silent = true })
vim.keymap.set("n", "fo", "zo", { noremap = true, silent = true })

-- select all
vim.keymap.set("n", "aa", "ggVG", { noremap = true, silent = true })

-- save and close
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })

-- Packer Sync
vim.keymap.set("n", "<F5>", ":PackerSync<CR>", { noremap = true, silent = true })

-- search and replace
vim.keymap.set("n", "rr", ":%s///gcI<Left><Left><Left><Left><Left>", { noremap = true, expr = false, silent = false })
vim.keymap.set("n", "<Esc><Esc><Esc>", "<cmd>nohlsearch<CR><Esc>", { noremap = true, silent = true })

--Add move line shortcuts
vim.keymap.set("n", "<S-K>", ":m .-2<CR>==", { noremap = true })
vim.keymap.set("n", "<S-J>", ":m .+1<CR>==", { noremap = true })
vim.keymap.set("v", "<S-J>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "<S-K>", ":m '<-2<CR>gv=gv", { noremap = true })

-- Better indenting
vim.keymap.set("v", "<TAB>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-TAB>", "<gv", { noremap = true, silent = true })

-- Better navigation
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Tab switch buffer
vim.keymap.set("n", "<TAB>", "<cmd>bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-TAB>", "<cmd>bprevious<CR>", { noremap = true, silent = true })
