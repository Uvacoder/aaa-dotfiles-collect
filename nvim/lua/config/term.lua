require'FTerm'.setup({
    dimensions  = {
        height = 0.9,
        width = 0.9,
        x = 0.5,
        y = 0.5
    },
    border = 'single' -- or 'double'
})

-- Keybinding
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
keymap('t', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
keymap('t', '<C-c>', '<CMD>lua require("FTerm").close()<CR>', opts)
