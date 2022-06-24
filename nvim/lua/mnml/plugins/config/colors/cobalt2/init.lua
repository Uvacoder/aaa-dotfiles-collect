return {
  setup = function(use)
    use({
      'lalitmee/cobalt2.nvim',
      requires = 'tjdevries/colorbuddy.nvim',
      config = function()
        local hl_bg = require("mnml.utils").hl_bg
        local hl_fg = require("mnml.utils").hl_fg

        require('colorbuddy').colorscheme('cobalt2')

        hl_bg("Normal", "#0C1923")
        hl_bg("NormalNC", "#0C1923")
        hl_bg("LineNr", "#0C1923")
        hl_bg("NormalFloat", "#0C1923")
        hl_fg("FloatBorder", "#00AAFF")
        hl_bg("PMenu", "#0C1923")
      end,
    })
  end,
}
