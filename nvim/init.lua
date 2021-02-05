vim.g.custom = {
  actived = false,
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
      bg         = '#193549',
      -- bg         = '#0F101B',
      statusline = '#122738',
      cursorline = '#1F4662',
      identguides = {
        even = { fg = '#1A1F3A', bg ='#122738' },
        odd  = { fg = '#122738', bg ='#1A1F3A' }
      }
    }
  }
}
-- Blue: '#193549
-- Blue Highlight: #1F4662
-- Blue Highlight2: #234E6D
-- Blue Dark: #122738
-- Yellow: #ffc600
-- Hot Pink: #ff0088
-- Blush Pink: #ff628c
-- Orange: #ff9d00
-- Green
require('plugins')
require('settings')
require('autocmd')
require('keybinds')
