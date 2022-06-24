return {
  setup = function(use)
    use({
      'lalitmee/cobalt2.nvim',
      requires = 'tjdevries/colorbuddy.nvim',
      config = function()
        local hl_bg = require("mnml.utils").hl_bg
        require('colorbuddy').colorscheme('cobalt2')
        hl_bg("Normal", "#0C1923")
        hl_bg("NormalNC", "#0C1923")
        hl_bg("LineNr", "#0C1923")
        hl_bg("NormalFloat", "#0C1923")
        hl_bg("PMenu", "#0C1923")
      end,
    })

    -- use({
    --   "RRethy/nvim-base16",
    --   config = function()
    --     -- require("mnml.plugins.config.colors.base16-rose-pine")
    --     -- require("mnml.plugins.config.colors.base16-gruvbox-dark-hard")
    --     -- require("mnml.plugins.config.colors.base16-onedark")
    --     require("mnml.plugins.config.colors.base16-tokyo-night")
    --     -- require("mnml.plugins.config.colors.base16-material-darker")
    --     require("mnml.plugins.config.colors.fixes")
    --   end,
    -- })
  end,
}
