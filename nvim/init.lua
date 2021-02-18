local themes = {
  cobalt2 = {
    bg         = '#133349',
    statusline = '#194563',
    cursorline = '#194563',
  },
  shades_of_purple = {
    bg         = '#1E1E3F',
    statusline = '#2D2B55',
    cursorline = '#2D2B55'
 },
  ayu = {
    bg         = '#0e1318',
    statusline = '#12171C',
    cursorline = '#12171C'
  }
}

vim.g.fix = {
  theme_ui = true,
  invert_vertsplit = false,
  ui = themes.ayu,
  colors = {
    yellow  = '#ffc600',
    orange  = '#FF8B4B',
    red     = '#F84B5E',
    purple  = '#7a5ccc',
    magenta = '#CC8CC4',
    blue    = '#00a3cc',
    cyan    = '#4AB6B5',
    green   = '#5ccc96',
    white   = '#D8DDE9',
    grey    = '#A7ACBA',
    black   = '#0b1015'
  }
}

require('plugins')
require('options')
require('autocmd')
require('mappings')
