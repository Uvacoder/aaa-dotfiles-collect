-- https://github.com/Mofiqul/dracula.nvim
return {
  setup = function(use)
    use({
      "briones-gabriel/darcula-solid.nvim",
      requires = "rktjmp/lush.nvim",
      config = function()
        vim.cmd('colorscheme darcula-solid')

        local hl_link = require("mnml.utils").hl_link
        local hl_bg = require("mnml.utils").hl_bg
        local hl_fg = require("mnml.utils").hl_fg
        local bg_color = '#151516' -- '#1E1E1E' -- "#202020" -- vim.g.mnml.ui.colors.bg

        hl_bg('Normal', bg_color)
        hl_bg('NormalNC', bg_color)
        hl_bg('Pmenu', bg_color)
        hl_fg('htmlArg', '#CB7732')
        hl_link('FloatBorder', 'Normal')
        hl_link('NormalFloat', 'Normal')
        hl_link('TabLine', 'Normal')
        hl_link('TabLineFill', 'Normal')
      end
    })
  end
}
