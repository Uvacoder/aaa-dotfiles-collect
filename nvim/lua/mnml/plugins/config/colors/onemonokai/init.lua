-- https://github.com/cpea2506/one_monokai.nvim
return {
  setup = function(use)
    use({
      "cpea2506/one_monokai.nvim",
      config = function()
        require("one_monokai").setup({
          transparent = false,
          colors = { bg = vim.g.mnml.ui.colors.bg },
          themes = function(colors)
            return {
              TablineFill = { bg = colors.bg },
              NeoTreeCursorLine = { bg = colors.pink, fg = colors.bg },
              Pmenu = {fg = colors.green},
              FloatBorder = {fg = colors.green},
              NeoTreeFloatTitle = {fg = colors.green},
            }
          end,
        })
      end,
    })
  end,
}
