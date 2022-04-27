local themes = { "rose-pine", "tokyo-night" }
local border = { "rounded", "single", "double" }

vim.g.my = {
  theme = themes[2],
  border = border[1],
  icons = {
    signs = { Error = "⦸ ", Warning = "𥉉", Hint = "ﬤ ", Info = " " },
    diff = { add = "┃", change = "┃", delete = "┃" },
    modified = "",
  },
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
