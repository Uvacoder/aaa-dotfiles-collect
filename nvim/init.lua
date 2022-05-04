local themes = { "rose-pine", "tokyo-night", "one-dark" }
local border = { "rounded", "single", "double" }

vim.g.my = {
  theme = themes[3],
  border = border[1],
  colors = {
    blue = "#5482FF",
    green = "#84b360",
    yellow = "#d9c97c",
    red = "#ff7ab2",
    white = "#ffffff",
    gray = "#0c0e15",
    black = "#000000",
  },
}

require("options")
require("plugins")
require("mappings")
require("autocmds")
