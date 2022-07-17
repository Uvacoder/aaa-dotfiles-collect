return {
  setup = function(use)
    use({
      'lalitmee/cobalt2.nvim',
      requires = 'tjdevries/colorbuddy.nvim',
      config = function()
        local hl_bg = require("mnml.utils").hl_bg
        local hl_fg = require("mnml.utils").hl_fg

        require('colorbuddy').colorscheme('cobalt2')
        -- local bg_color = "#0c1923" -- default
        local bg_color = "#0D1117"
        local border_color = "#00AAFF"

        hl_bg("SpecialKey", bg_color)
        hl_bg("Normal", bg_color)
        hl_bg("NormalNC", bg_color)
        hl_bg("TabLine", bg_color)
        hl_bg("TabLineFill", bg_color)
        hl_bg("TabLineSel", bg_color)
        hl_bg("LineNr", bg_color)
        hl_bg("NormalFloat", bg_color)
        hl_fg("FloatBorder", border_color)
        hl_fg("NeoTreeFloatBorder", border_color)
        hl_bg("NeoTreeFloatTitle", bg_color)
        hl_bg("PMenu", bg_color)
        hl_fg("PMenu", border_color)
        hl_bg("WildMenu", bg_color)
        hl_fg("WildMenu", border_color)
        hl_fg("NeoTreeCursorLine", "#000000")
        hl_bg("NeoTreeCursorLine", "#FFC600")
      end,
    })
  end,
}
