vim.g.rose_pine_variant = 'moon'
vim.g.rose_pine_enable_italics = true
vim.g.rose_pine_disable_background = true

vim.api.nvim_set_keymap('n', '<c-m>', [[<cmd>lua require('rose-pine.functions').toggle_variant({'base', 'moon'})<cr>]], { noremap = true, silent = true })

require('rose-pine').set()

