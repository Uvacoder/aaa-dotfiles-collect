return {
  setup = function(use)
    use({
      'lalitmee/cobalt2.nvim',
      requires = 'tjdevries/colorbuddy.nvim',
      config = function()
        local hl_bg = require("mnml.utils").hl_bg
        local hl_fg = require("mnml.utils").hl_fg

        require('colorbuddy').colorscheme('cobalt2')

        hl_bg("SpecialKey", "#0C1923")
        hl_bg("Normal", "#0C1923")
        hl_bg("NormalNC", "#0C1923")
        hl_bg("TabLine", "#0C1923")
        hl_bg("TabLineFill", "#0C1923")
        hl_bg("TabLineSel", "#0C1923")
        hl_bg("LineNr", "#0C1923")
        hl_bg("NormalFloat", "#0C1923")
        hl_fg("FloatBorder", "#00AAFF")
        hl_fg("NeoTreeFloatBorder", "#00AAFF")
        hl_bg("NeoTreeFloatTitle", "#0C1923")
        hl_fg("NeoTreeCursorLine", "#000000")
        hl_bg("NeoTreeCursorLine", "#FFC600")
        hl_bg("PMenu", "#0C1923")
        hl_fg("PMenu", "#00AAFF")
        hl_bg("WildMenu", "#0C1923")
        hl_fg("WildMenu", "#00AAFF")
      end,
    })
  end,
}
