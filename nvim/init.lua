vim.g.custom = {
  actived = true,
  options = {
    invert_vertsplit = false
  },
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
    black   = '#0b1015',
    ui = {
      bg         = '#0D1117',
      -- bg         = '#0F101B',
      statusline = '#12171C',
      cursorline = '#12171C',
      identguides = {
        even = { fg = '#1A1F3A', bg ='#122738' },
        odd  = { fg = '#122738', bg ='#1A1F3A' }
      }
    }
  }
}
require('plugins')
require('settings')
require('autocmd')
require('keybinds')
