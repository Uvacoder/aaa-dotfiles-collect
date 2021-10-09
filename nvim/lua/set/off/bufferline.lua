return {
  setup = function(use)
    use {
      'akinsho/nvim-bufferline.lua',

      config = function()
        require("bufferline").setup{
          options = {
            offsets = {{filetype = "NvimTree", text = "File Explorer"}},
            indicator_icon = '',
            show_buffer_close_icons = false ,
            enforce_regular_tabs = false,
            separator_style = "thin" -- {'',''}
          },
          highlights = {
            buffer_selected = { guibg='#000000', gui = "bold" },
            background = { guibg = '#0F1117' },
            fill = { guibg = '#0F1117' },
            tab = { guibg = '#0F1117'},
          }
        }
      end
    }
  end
}
