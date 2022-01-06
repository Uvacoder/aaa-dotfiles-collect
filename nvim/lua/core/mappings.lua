--------------
-- mappings --
--------------

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap for dealing with word wrap
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Y yank until the end of line  (note: this is now a default on master)
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })

-- buffers navigation
vim.api.nvim_set_keymap("n", "=", "<PageDown>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "-", "<PageUp>", { noremap = true, silent = true })

-- delete buffer
vim.api.nvim_set_keymap("n", "<C-x>", ":bd<CR>", { noremap = true, silent = true })

-- fold unfold html
vim.api.nvim_set_keymap("n", "fc", "zfat", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "fo", "zo", { noremap = true, silent = true })

-- select all
vim.api.nvim_set_keymap("n", "aa", "ggVG", { noremap = true, silent = true })

-- save and close
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })

-- Packer Sync
vim.api.nvim_set_keymap("n", "<F5>", ":PackerSync<CR>", { noremap = true, silent = true })

-- search and replace
vim.api.nvim_set_keymap("n", "rr", ":%s///gcI<Left><Left><Left><Left><Left>", { noremap = true, expr = false, silent = false })
vim.api.nvim_set_keymap("n", "<Esc><Esc><Esc>", "<cmd>nohlsearch<CR><Esc>", { noremap = true, silent = true })

--Add move line shortcuts
vim.api.nvim_set_keymap("n", "<S-K>", ":m .-2<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-J>", ":m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-J>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-K>", ":m '<-2<CR>gv=gv", { noremap = true })

-- Better indenting
vim.api.nvim_set_keymap("v", "<TAB>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-TAB>", "<gv", { noremap = true, silent = true })

-- Better navigation
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Tab switch buffer
vim.api.nvim_set_keymap("n", "<TAB>", "<cmd>bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", "<cmd>bprevious<CR>", { noremap = true, silent = true })
