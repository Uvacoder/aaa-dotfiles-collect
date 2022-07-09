return {
  setup = function(use)
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v1.*',
        config = function()
          local bgColor = '#12111B'

          require('rose-pine').setup({
            dark_variant = 'moon', -- main | moon
            groups = {
		          background = bgColor,
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
