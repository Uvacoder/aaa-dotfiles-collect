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
-- vim.keymap.set("n", "x", ":bd<CR>", { noremap = true, silent = true })

-- fold unfold html
vim.keymap.set("n", "fc", "zfat", { noremap = true, silent = true })
vim.keymap.set("n", "fo", "zo", { noremap = true, silent = true })

-- select all
vim.keymap.set("n", "aa", "ggVG", { noremap = true, silent = true })

-- save and close
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-f>", ":Format<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })

-- vim.keymap.set("n", "q", ":q<CR>", { noremap = true, silent = true })

-- Packer Sync
vim.keymap.set("n", "<F5>", ":PackerSync<CR>", { noremap = true, silent = true })

-- search and replace
vim.keymap.set("n", "rr", ":%s///gcI<Left><Left><Left><Left><Left>", { noremap = true, expr = false, silent = false })
vim.keymap.set("n", "<Esc><Esc><Esc>", "<cmd>nohlsearch<CR><Esc>", { noremap = true, silent = true })

--Add move line shortcuts
vim.api.nvim_set_keymap("n", "<S-j>", ":m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-k>", ":m .-2<CR>==", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", { noremap = true })
-- vim.api.nvim_set_keymap("i", "<S-j>", "<Esc>:m .+1<CR>==gi", { noremap = true })
-- vim.api.nvim_set_keymap("i", "<S-k>", "<Esc>:m .-2<CR>==gi", { noremap = true })

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

vim.cmd([[
function! PrintVariable()
    let string_under_cursor = expand("<cword>")
    execute "normal! o"
    execute "normal! i" . "console.log(\" [DEBUG] " . string_under_cursor ": \", " . string_under_cursor . ")"
endfunction
nnoremap <F1> :call PrintVariable()<cr>
]])
