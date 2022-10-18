-- https://github.com/akinsho/bufferline.nvim
return {
  setup = function(use)
    use({
      'akinsho/bufferline.nvim',
      tag = 'v3.*',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        require('bufferline').setup({
          options = {
            show_close_icon = false,
            show_buffer_close_icons = false,
            separator_style = { ' ', ' ' },
            indicator = { icon = '▎', style = 'none' }, -- style = 'icon'
            diagnostics = 'nvim_lsp',
            -- highlights = { fill = { bg = { attribute = "fg", highlight = "Pmenu" }}}
          },
        })
      end,
    })
  end,
}
