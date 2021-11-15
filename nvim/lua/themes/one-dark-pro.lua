return {
  setup = function(use)
    use({
      "olimorris/onedarkpro.nvim",

      config = function()
        local onedarkpro = require("onedarkpro")
        onedarkpro.setup({
          theme = "onedark", -- Override with "onedark" or "onelight"
          options = {
            bold = true,
            italic = true,
            underline = true,
            undercurl = true,
            cursorline = false,
            transparency = true,
          },
        })
        onedarkpro.load()
      end,
    })
  end,
}
