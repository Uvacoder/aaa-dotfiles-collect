return {
  setup = function(use)
    use {
      'hoob3rt/lualine.nvim',

      requires = 'kyazdani42/nvim-web-devicons',

      config = function()
        require('lualine').setup{
          options = {
            theme = 'iceberg_dark',
            component_separators = "",
            section_separators = "",
          },
          sections = {
            lualine_a = {"mode", "paste"},
            lualine_b = {"branch", "diff"},
            lualine_c = {
              {"filename", file_status = true, full_path = true, color = {fg = '#f0f0f0', gui = 'bold'}},
              {"diagnostics", sources = {"nvim_lsp"}}
            },
            lualine_x = {"filetype"},
            lualine_y = {{"progress"}},
            lualine_z = {{"location", icon = ""}}
          },
          extensions = {'nvim-tree'}
        }
      end
    }
  end
}
