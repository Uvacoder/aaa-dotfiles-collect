return {
  setup = function(use)
    use {
      'romgrk/barbar.nvim',

      requires = 'kyazdani42/nvim-web-devicons',

      config = function()
        vim.g.bufferline = {
          animation = true,
          auto_hide = true,
          tabpages = true,
          closable = true,
          clickable = true,
          icons = true,
          icon_custom_colors = false,
          icon_separator_active = '',
          icon_separator_inactive = '',
          icon_close_tab = '',
          icon_close_tab_modified = '●',
          icon_pinned = '車',
          insert_at_end = true,
          maximum_padding = 1,
          maximum_length = 30,
        }
        vim.api.nvim_set_keymap('n', 'bc', ':BufferClose<CR>', { noremap = true, silent = true })

        vim.api.nvim_command("hi! BufferCurrent guifg=#f0f0f0")

      end
    }
  end
}
