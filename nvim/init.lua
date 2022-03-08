vim.g.my_themes = {
  "cobalt-2",
  "doom-one",
  "one-dark",
  "rose-pine",
  "tokyo-dark",
  "tokyo-night",
}

vim.g.my_theme_selected = 1

vim.g.my_colors = {
  -- bg = "#000000",
  -- bg_alt = "#090B10",
  bg = "#193549",
  bg_alt = "#002B37",
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
  hint = "",
  info = "",
  warning = "",
  error = "",
  add = "⏽",
  change = "⏽",
  delete = "⏽",
}

require("core/options")
require("core/plugins")
require("core/mappings")
require("core/autocmd")
