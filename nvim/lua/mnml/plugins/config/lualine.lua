return {
  setup = function(use)
    use({
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function()
        -- stylua: ignore
        local colors = {
          fg_file  = "#ffffff",
          bg  = vim.g.mnml.ui.colors.bg,
          fg  = vim.g.mnml.ui.colors.info,
        }

        local minimal_theme = {
          normal = {
            a = { fg = colors.fg, bg = colors.bg },
            b = { fg = colors.fg_file, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
          insert = { a = { fg = colors.fg, bg = colors.bg }},
          visual = { a = { fg = colors.fg, bg = colors.bg }},
          replace = { a = { fg = colors.fg, bg = colors.bg }},

          inactive = {
            a = { fg = colors.fg, bg = colors.bg },
            b = { fg = colors.fg, bg = colors.bg },
            c = { fg = colors.fg, bg = colors.bg },
          },
        }

        require('lualine').setup {
          options = {
            theme = minimal_theme,
            component_separators = '',
            globalstatus = true,
            section_separators = { left = '', right = '' },
          },
          sections = {
            lualine_a = {{ 'mode', right_padding = 2 }},
            lualine_b = { 'diagnostics', 'filename' },
            lualine_c = { 'location' },
            lualine_x = { 'progress', 'filetype', 'fileformat' },
            lualine_y = { },
            lualine_z = {{ 'branch', 'diff', left_padding = 2 }},
          },
          inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
          },
          tabline = {},
          extensions = {'neo-tree'},
        }
      end,
    })
  end,
}
