local color = vim.g.custom.colors

require('indent_guides').setup({
  even_colors = color.ui.identguides.even,
  odd_colors  = color.ui.identguides.odd
})
