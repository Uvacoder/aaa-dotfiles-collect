local colors = vim.g.my_colors

vim.api.nvim_command('hi Normal ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi SignColumn ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi EndOfBuffer ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi FoldColumn ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi NonText ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi LineNr ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi VertSplit ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi CursorLineNR ctermbg=NONE guibg=NONE')
vim.api.nvim_command('hi VertSplit ctermfg=NONE guifg=NONE')
vim.api.nvim_command('hi Comment gui=italic')
vim.api.nvim_command('hi IncSearch guibg='..colors.yellow)

