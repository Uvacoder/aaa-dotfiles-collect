-- https://github.com/akinsho/bufferline.nvim
return {
  setup = function(use)
    use({
      'akinsho/bufferline.nvim',
      tag = 'v2.*',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        require('bufferline').setup({
          options = {
            show_close_icon = false,
            show_buffer_close_icons = false,
            separator_style = { ' ', ' ' },
            indicator = { icon = '▎', style = 'icon' },
            -- indicator = { icon = '▎', style = 'none' },
            diagnostics = 'nvim_lsp',
          },
        })
      end,
    })
  end,
}
