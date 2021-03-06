vim.g._config = {
  remove_bg = true,
  colors = {
    bg = "NONE"
  },
  status = {
    added    = "#5ccc96",
    modified = "#ffc600",
    removed  = "#F84B5E"
  }
}

require('plugins')
require('options')
require('autocmd')
require('mappings')
