local color = vim.g.my_colors

vim.api.nvim_command('hi String cterm=italic gui=italic')
vim.api.nvim_command('hi Comment cterm=italic gui=italic')

vim.api.nvim_command('hi Normal guibg=' .. color.bg)
vim.api.nvim_command('hi SignColumn guibg=' .. color.bg)
vim.api.nvim_command('hi EndOfBuffer guibg=' .. color.bg .. ' guifg=' .. color.bg)
vim.api.nvim_command('hi FoldColumn guibg=' .. color.bg)
vim.api.nvim_command('hi LineNr guibg=' .. color.bg)
vim.api.nvim_command('hi VertSplit guifg=' .. color.bg .. ' guibg=' .. color.bg)
-- vim.api.nvim_command('hi CursorLineNR guibg=' .. color.bg)


vim.api.nvim_command('hi IncSearch guibg=' .. color.yellow .. ' guifg=' .. color.black)

