local themes = { "one-dark" }
local border = { "rounded", "single", "double" }

vim.g.my = {
  theme = themes[1],
  border = border[2],
  colors = {
    blue = "#5482FF",
    green = "#84b360",
    yellow = "#d9c97c",
    red = "#ff7ab2",
    white = "#ffffff",
    gray = "#0c0e15",
    dark_gray = "#161B22", ---"#000000",
    black = "#0D1117",
  },
}

require("options")
require("plugins")
require("keymaps")
require("autocmds")
