local colors = vim.g.my_colors

vim.api.nvim_command('hi Normal guibg=NONE')
vim.api.nvim_command('hi SignColumn guibg=NONE')
vim.api.nvim_command('hi EndOfBuffer guibg=NONE')
vim.api.nvim_command('hi LineNr guibg=NONE')
-- vim.api.nvim_command('hi Comment gui=italic guifg='..colors.bg)
vim.api.nvim_command('hi IncSearch guibg='..colors.yellow)

