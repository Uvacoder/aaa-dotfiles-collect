vim.g.custom = {
  actived = true,
  options = {
    invert_vertsplit = false
  },
  colors = {
    yellow  = '#FECA5C',
    orange  = '#FF8B4B',
    red     = '#F84B5E',
    magenta = '#CC8CC4',
    purple  = '#7a5ccc',
    blue    = '#00a3cc',
    cyan    = '#4AB6B5',
    green   = '#5ccc96',
    white   = '#D8DDE9',
    grey    = '#A7ACBA',
    black   = '#0b1015',
    ui = {
      bg         = '#0F101B',
      statusline = '#1A1F2C',
      cursorline = '#1A1F2C',
      identguides = {
        even = { fg = '#2E323A', bg ='#34383F' },
        odd  = { fg = '#34383F', bg ='#2E323A' }
      }
    }
  }
}

require('plugins')
require('settings')
require('autocmd')
require('keybinds')
