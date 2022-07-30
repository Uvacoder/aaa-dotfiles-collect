-- https://github.com/cpea2506/one_monokai.nvim
return {
  setup = function(use)
    use({
      "cpea2506/one_monokai.nvim",
      config = function()
        require("one_monokai").setup({
          transparent = false,
          colors = {
            bg = "#000000"
          },
          themes = function(colors)
            return {
              TablineFill = { bg = colors.bg },
              NeoTreeCursorLine = { bg = colors.pink, fg = colors.bg },
              Pmenu = {fg = colors.yellow},
              FloatBorder = {fg = colors.yellow},
              NeoTreeFloatTitle = {fg = colors.yellow},
            }
          end,
        })
      end,
    })
  end,
}
