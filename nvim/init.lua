vim.g._config = {
  remove_bg = false,
  colors = {
    bg = "NONE"
  },
  status = {
    added    = "#5ccc96",
    modified = "#ffc600",
    removed  = "#F84B5E"
  }
}

require('options')
require('plugins')
require('autocmd')
require('mappings')
