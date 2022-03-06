vim.g.my_theme_selected = 1

vim.g.my_themes = {
  "cobalt-2", ----- 1
  "doom-one", ----- 2
  "night-fox", ---- 3
  "one-dark", ----- 4
  "rose-pine", ---- 5
  "tokyo-dark", --- 6
  "tokyo-night", -- 7
}

vim.g.my_colors = {
  bg = "NONE",
  bg_alt = "NONE",
  -- bg = "#000000",
  -- bg_alt = "#090B10",
  bg_select = "#23272E",
  fg = "#6272A4",
  blue = "#0087FF",
  green = "#00FF5F",
  yellow = "#FBFF00",
  orange = "#FC7039",
  red = "#ff0000",
  white = "#ffffff",
  purple = "#A400FF",
}

vim.g.icons = {
  hint = "",
  info = "",
  warning = "",
  error = "",
}

require("core/options")
require("core/plugins")
require("core/mappings")
require("core/autocmd")
