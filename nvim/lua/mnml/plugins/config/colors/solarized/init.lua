-- https://github.com/Mofiqul/dracula.nvim
return {
  setup = function(use)
    use({
      'ishan9299/nvim-solarized-lua',
      config = function()
        local hl_link = require("mnml.utils").hl_link
        local hl_fg = require("mnml.utils").hl_fg
        local hl_bg = require("mnml.utils").hl_bg


        vim.g.solarized_italics = 1
        vim.cmd('colorscheme solarized-high')

        hl_bg("NeoTreeCursorLine", '#657B83')
        hl_link("TabLineFill", "Normal")
        hl_link('NeoTreeNormal', 'PMenu')
        hl_link('NeoTreeNormalNC', 'PMenu')
        hl_link('NeoTreeFloatBorder', 'PMenu')
        hl_link('NeoTreeFloatTitle', 'PMenu')
        hl_link('FloatBorder', 'PMenu')
        hl_link('NormalFloat', 'PMenu')
      end,
    })
  end,
}
