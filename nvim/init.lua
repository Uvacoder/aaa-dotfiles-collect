vim.g.my_config = {
  remove_bg = true,
  colors = { bg = "NONE" },
  status = {
    added = "#5ccc96",
    modified = "#ffc600",
    removed = "#F84B5E",
    info = "#00B8FF"
  }
}

require('options')
require('plugins')
require('autocmd')
require('mappings')
