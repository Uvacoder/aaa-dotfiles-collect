vim.g.my_colors = {
  black = '#000000',
  grey = '#343d46',
  white = '#D8DDE9',
  yellow = '#FECA5C',
  orange = '#FF8B4B',
  red = '#F84B5E',
  magenta = '#CC8CC4',
  blue = '#6197CE',
  cyan = '#4AB6B5',
  green = '#8FCC95',
}

require('plugins')

-- vim.g.colors_name = 'spaceduck'
-- vim.g.colors_name = 'palenight'
vim.g.colors_name = 'OceanicNext'

require('settings')
require('autocmd')
require('keybinds')
