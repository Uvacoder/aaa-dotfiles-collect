vim.g.my_colors = {
  blue = "#0087FF",
  green = "#00FF5F",
  yellow = "#FBFF00",
  orange = "#FC7039",
  red = "#ff0000",
  white = "#ffffff",
  purple = "#A400FF",
}

vim.g.my_icons = { hint = "", info = "", warning = "", error = "", add = "⏽", change = "⏽", delete = "⏽" }

vim.g.my_themes = { "cobalt-2", "doom-one", "one-dark", "rose-pine", "tokyo-dark", "tokyo-night" }
vim.g.my_theme_selected = vim.g.my_themes[4]

require("core/options")
require("core/plugins")
require("core/mappings")
require("core/autocmd")
