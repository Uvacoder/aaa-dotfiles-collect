require("core/options")

vim.g.my_icons = {
  signs = { Error = " ", Warning = "𥉉", Hint = "ﬤ ", Info = " " },
  diff = { add = "┃", change = "┃", delete = "┃" },
  modified = "",
}

local border = { "rounded", "single" }
vim.g.my_border = border[2]

local themes = { "one-dark-pro", "rose-pine", "tokyo-night", "xcode-colors" }
vim.g.my_ui = { theme = themes[3], bg = "#000000", bg_alt = "#0c0e15", fg = "#5c6370" }

vim.g.my_colors = {
  blue = "#5482FF",
  green = "#84b360",
  yellow = "#d9c97c",
  orange = "#ffa14f",
  red = "#ff7ab2",
  white = "#ffffff",
  purple = "#b281eb",
}

require("core/Plugins")
require("core/mappings")
require("core/autocmd")
