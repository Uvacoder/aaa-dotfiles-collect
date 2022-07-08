return {
  setup = function(use)
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v1.*',
        config = function()
          require('rose-pine').setup({
            highlight_groups = {
              TabLineFill = { bg = 'base' },
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
