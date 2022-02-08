vim.g.my_theme = "themes/gruvbox-flat" -- doom-one, tokyo-dark, kanagawa, rose-pine, night-fox

vim.g.my_colors = {
  bg = "#000000", -- '#0D1117', '#141B24', '#000000', '#090B10', '#121212',
  bg_alt = "#090B10",
  bg_select = "#23272E",
  fg = "#6272A4",
  blue = "#0087FF",
  green = "#00FF5F",
  yellow = "#FBFF00",
  orange = "#FC7039",
  red = "#ff0000",
  white = "#ffffff",
  magenta = "#A400FF",
}

require("core/disable")
require("core/options")
require("core/autoload")
require("core/plugins")
require("core/mappings")
require("core/autocmd")
