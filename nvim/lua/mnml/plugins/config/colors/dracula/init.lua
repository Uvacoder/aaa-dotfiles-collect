-- https://github.com/Mofiqul/dracula.nvim
return {
  setup = function(use)
    use({
      'Mofiqul/dracula.nvim',
      config = function()
        local hl_link = require("mnml.utils").hl_link
        local hl_fg = require("mnml.utils").hl_fg

        -- local bg_color = "#282A36" -- default
        local bg_color = "#0B0B0F" -- vim.g.mnml.ui.colors.bg

        vim.g.dracula_colors = {
          bg = bg_color,
          fg = "#F8F8F2",
          selection = "#454158",
          comment = "#7970A9",
          red = "#FF9580",
          orange = "#FFCA80",
          yellow = "#FFFF80",
          green = "#8AFF80",
          purple = "#9580FF",
          cyan = "#80FFEA",
          pink = "#FF80BF",
          bright_red = "#FF6E6E",
          bright_green = "#69FF94",
          bright_yellow = "#FFFFA5",
          bright_blue = "#D6ACFF",
          bright_magenta = "#FF92DF",
          bright_cyan = "#A4FFFF",
          bright_white = "#FFFFFF",
          menu = "#21222C",
          visual = "#3E4452",
          gutter_fg = "#4B5263",
          nontext = "#3B4048",
        }
        -- show the '~' characters after the end of buffers
        vim.g.dracula_show_end_of_buffer = false
        -- use transparent background
        vim.g.dracula_transparent_bg = false
        -- set italic comment
        vim.g.dracula_italic_comment = true

        vim.cmd[[colorscheme dracula]]
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
