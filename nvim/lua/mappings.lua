local keymap = vim.keymap.set
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- fix and format
keymap("n", "<C-f>", ":EslintFixAll<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Open the current file in the default program
keymap("n", "<leader>x", ":!open %<cr><cr>", { expr = true })

--Rekeymap for dealing with word wrap
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- buffers navigation
keymap("n", "=", "<PageDown>", opts)
keymap("n", "-", "<PageUp>", opts)

-- delete buffer
keymap("n", "<C-x>", ":bd<CR>", opts)

-- fold unfold html
keymap("n", "<leader>fc", ":foldclose<cr>", opts)
keymap("n", "<leader>fo", ":foldopen<cr>", opts)

-- select all
keymap("n", "<leader>sa", "ggVG", opts)

-- save and close
keymap("n", "<C-w>", ":w<CR>", opts)
keymap("n", "<C-q>", ":q<CR>", opts)

-- search and replace
keymap("n", "rr", ":%s///gcI<Left><Left><Left><Left><Left>", { expr = false, silent = false })
keymap("n", "<Esc><Esc><Esc>", ":nohlsearch<CR><Esc>", opts)

--Add move line shortcuts
keymap("n", "<S-j>", ":m .+1<CR>==", opts)
keymap("n", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

-- Better indenting
keymap("v", "<TAB>", ">gv", opts)
keymap("v", "<S-TAB>", "<gv", opts)

-- Better navigation
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Tab switch buffer
keymap("n", "<TAB>", ":bnext<CR>", opts)
keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- print console.log(variable)
keymap("n", "<C-l>", ":call printLogVariable()<CR>", opts)
