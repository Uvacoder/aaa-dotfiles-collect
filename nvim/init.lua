vim.g.config = {
  _remove_bg = true,
  _status = {
    added    = "#5ccc96",
    modified = "#ffc600",
    removed  = "#F84B5E"
  }
}

require('plugins')
require('options')
require('autocmd')
require('mappings')
