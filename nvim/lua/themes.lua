local g = vim.g
local o = vim.o
local fn = vim.fn
local api = vim.api
local colors = vim.g.my_colors

o.background = 'dark'

if fn.has('termguicolors') == 1 then
  o.termguicolors = true
end

g.colors_name = 'spaceduck'
-- g.colors_name = 'palenight'
-- g.colors_name = 'OceanicNext'


api.nvim_command('hi Normal ctermbg=NONE guibg=NONE')
api.nvim_command('hi SignColumn ctermbg=NONE guibg=NONE')
api.nvim_command('hi EndOfBuffer ctermbg=NONE guibg=NONE')
api.nvim_command('hi LineNr ctermbg=NONE guibg=NONE')
api.nvim_command('hi VertSplit ctermfg=NONE guifg=NONE')
api.nvim_command('hi Comment gui=italic')
api.nvim_command('hi IncSearch guibg='..colors.yellow)

