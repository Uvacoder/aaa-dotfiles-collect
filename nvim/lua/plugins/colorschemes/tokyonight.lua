-- https://github.com/folke/tokyonight.nvim
return {
  setup = function(use)
    use({
      "folke/tokyonight.nvim",
      config = function()
        local bg = "#1F2335" -- "#191125" -- "#080910"
        local border = "#1F2335"

        local tokyonight = require("tokyonight")
        tokyonight.setup({
          style = "storm",
          sidebars = { "qf", "help", "terminal", "parker" },
          on_colors = function(c)
            c.bg = "#232236"
            c.bg_statusline = "#232236"
            c.border_highlight = border
            c.none = "NONE"
            c.bg_dark = "#1f2335"
            c.bg_highlight = "#292e42"
            c.terminal_black = "#414868"
            c.fg = "#c0caf5"
            c.fg_dark = "#a9b1d6"
            c.fg_gutter = "#3b4261"
            c.dark3 = "#545c7e"
            c.comment = "#565f89"
            c.dark5 = "#737aa2"
            c.blue0 = "#3d59a1"
            c.blue = "#7aa2f7"
            c.cyan = "#7dcfff"
            c.blue1 = "#2ac3de"
            c.blue5 = "#0db9d7"
            c.blue2 = "#89ddff"
            c.blue6 = "#b4f9f8"
            c.blue7 = "#394b70"
            c.purple = "#A400FF"
            c.magenta2 = "#ff007c"
            c.magenta = "#9d7cd8"
            c.orange = "#ff9e64"
            c.yellow = "#e0af68"
            c.green = "#9ece6a"
            c.green1 = "#73daca"
            c.green2 = "#41a6b5"
            c.teal = "#1abc9c"
            c.red = "#f7768e"
            c.red1 = "#db4b4b"
            c.git = { add = "#1abc9c", change = "#FFC600", delete = "#ff007c" }
            c.gitSigns = { add = "#1abc9c", change = "#FFC600", delete = "#ff007c" }
          end,
          on_highlights = function(hl, c)
            hl.CursorLineNr = { fg = c.orange, bold = true }
            hl.NeoTreeNormal = { bg = c.bg }
            hl.NeoTreeNormalNC = { bg = c.bg }
            hl.NeoTreeFloatBorder = { bg = c.bg, fg = c.orange }
            hl.NeoTreeCursorLine = { bg = c.bg_highlight }
            hl.FloatBorder = { fg = c.orange, bg = c.bg }
            hl.NormalFloat = { bg = c.bg }
            hl.Pmenu = { bg = c.bg, fg = c.orange }
            hl.PmenuSel = { bg = c.bg_highlight }
          end,
        })
        tokyonight.load()
      end,
    })
  end,
}
