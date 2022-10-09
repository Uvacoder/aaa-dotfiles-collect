local keymap = vim.keymap.set
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- MODES
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

-- buffers navigation
keymap("n", "=", "<PageDown>", opts)
keymap("n", "-", "<PageUp>", opts)

-- delete buffer
keymap("n", "<C-x>", ":bd<CR>", opts)

-- fold unfold html
keymap("n", "<leader>fc", "<cmd>foldclose<cr>", opts)
keymap("n", "<leader>fo", "<cmd>foldopen<cr>", opts)

-- select all
keymap("n", "<leader>sa", "ggVG", opts)

-- save and close
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-q>", ":q<CR>", opts)

-- search and replace
keymap("n", "rr", ":%s///gcI<Left><Left><Left><Left><Left>", { expr = false, silent = false })
keymap("n", "<Esc><Esc><Esc>", "<cmd>nohlsearch<CR><Esc>", opts)

--Add move line shortcuts
keymap("n", "<S-j>", ":m .+1<CR>==", opts)
keymap("n", "<S-k>", ":m .-2<CR>==", opts)

-- print console.log(variable)
keymap("n", "<C-l>", "<cmd>call PrintVariable()<CR>", opts)

-- VISUAL --

--Add move line shortcuts
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better indenting
keymap("v", "<TAB>", ">gv", opts)
keymap("v", "<S-TAB>", "<gv", opts)

-- PLUGINS --

-- Neo-tree
keymap("n", ",", "<CMD>Neotree toggle<CR>", opts)
keymap("n", "<C-e>", "<CMD>Neotree toggle<CR>", opts)
keymap("n", "<C-g>", "<CMD>Neotree git_status toggle<CR>", opts)
keymap("n", "<C-b>", "<CMD>Neotree buffers toggle<CR>", opts)
keymap("n", "<C-q>", "<CMD>Neotree close<CR>", opts)

-- open in Github
keymap("n", "<Leader>gr", ":OpenInGHRepo <CR>", opts)
keymap("n", "<Leader>gf", ":OpenInGHFile <CR>", opts)

-- cokeline
--[[ for i = 1, 9 do ]]
--[[ 	keymap("n", ("<Leader>%s"):format(i), ("<Plug>(cokeline-focus-%s)"):format(i), opts) ]]
--[[ end ]]
