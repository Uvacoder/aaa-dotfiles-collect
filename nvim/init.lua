vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

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
