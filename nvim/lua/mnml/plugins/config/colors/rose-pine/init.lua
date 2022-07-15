-- https://github.com/rose-pine/neovim
return {
  setup = function(use)
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v1.*',
        config = function()
          -- local bgColor = '#12111B'
          local bgColor = "#0D1117" -- "#101116" -- "#14151c" -- "#1b1c25" -- "#0f0f0f" --- "#0c1923"

          require('rose-pine').setup({
            dark_variant = 'main', -- main | moon
            groups = {
		          background = bgColor,
              surface = '#000000'
            },
            highlight_groups = {
              TabLineFill = { bg = bgColor },
              TabLineSel = { bg = bgColor },
              NeoTreeCursorLine = { bg = 'Overlay' },
              FloatBorder = { bg = 'Surface' },
              NeoTreeNormal = { bg = 'Surface' },
              NeoTreeNormalNC = { bg = 'Surface' }
            }
          })
          vim.cmd('colorscheme rose-pine')
        end
    })
  end,
}
