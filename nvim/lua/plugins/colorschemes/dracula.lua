-- https://github.com/Mofiqul/dracula.nvim
return {
  setup = function(use)
    use({
      "Mofiqul/dracula.nvim",
      config = function()
        local dracula = require("dracula")
        dracula.setup({
          colors = {
            bg = "#0D1117",
            fg = "#F8F8F2",
            selection = "#44475A",
            comment = "#6272A4",
            red = "#FF5555",
            orange = "#FFB86C",
            yellow = "#F1FA8C",
            green = "#50fa7b",
            purple = "#BD93F9",
            cyan = "#8BE9FD",
            pink = "#FF79C6",
            bright_red = "#FF6E6E",
            bright_green = "#69FF94",
            bright_yellow = "#FFFFA5",
            bright_blue = "#D6ACFF",
            bright_magenta = "#FF92DF",
            bright_cyan = "#A4FFFF",
            bright_white = "#FFFFFF",
            menu = "#000000",
            visual = "#3E4452",
            gutter_fg = "#4B5263",
            nontext = "#3B4048",
          },
          overrides = {
            Pmenu = { fg = dracula.colors().white, bg = dracula.colors().menu },
            NeoTreeFloatBorder = { link = "Pmenu" },
            NeoTreeNormal = { link = "Pmenu" },
            NeoTreeNormalNC = { link = "Pmenu" },
            NormalFloat = { link = "Pmenu" },
            FloatBorder = { link = "Pmenu" },
          },
        })
        vim.cmd("colorscheme dracula")
      end,
    })
  end,
}
