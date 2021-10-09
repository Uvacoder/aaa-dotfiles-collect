return {
  setup = function(use)
    use {
      'hoob3rt/lualine.nvim',

      requires = 'kyazdani42/nvim-web-devicons',

      config = function()
        local mybg = '#0F1117'
        local my = require'lualine.themes.iceberg_dark'
        my.visual.a.fg = '#c678dd'
        my.visual.a.bg = mybg
        my.visual.b.bg = mybg
        my.replace.a.fg = '#e06c75'
        my.replace.a.bg = mybg
        my.replace.b.bg = mybg
        my.inactive.a.fg = mybg
        my.inactive.a.bg = mybg
        my.inactive.b.bg = mybg
        my.inactive.c.bg = mybg
        my.normal.a.fg = '#98c379'
        my.normal.a.bg = mybg
        my.normal.b.bg = mybg
        my.normal.c.bg = mybg
        my.insert.a.fg = '#61afef'
        my.insert.a.bg = mybg
        my.insert.b.bg = mybg

        require('lualine').setup{
          options = {
            theme = my,
            component_separators = " ",
            section_separators = " ",
          },
          sections = {
            lualine_a = {"mode", "paste", color = { gui = 'bold' }},
            lualine_b = {"branch", "diff"},
            lualine_c = {
              {"filename", file_status = true, full_path = true, color = {fg = '#f0f0f0', gui = 'bold'}},
              {"diagnostics", sources = {"nvim_lsp"}},
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
