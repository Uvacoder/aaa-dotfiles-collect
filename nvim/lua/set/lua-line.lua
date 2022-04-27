return {
  setup = function(use)
    use({
      "hoob3rt/lualine.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("lualine").setup({
          options = {
            icons_enabled = false,
            theme = {
              normal = {
                a = { fg = vim.g.my_colors.blue, bg = vim.g.my_ui.bg_alt, gui = "bold" },
                b = { fg = vim.g.my_colors.white, bg = vim.g.my_ui.bg_alt, gui = "bold" },
                c = { fg = vim.g.my_colors.fg, bg = vim.g.my_ui.bg_alt },
              },
              insert = { a = { fg = vim.g.my_colors.green, bg = vim.g.my_ui.bg_alt, gui = "bold" } },
              visual = { a = { fg = vim.g.my_colors.yellow, bg = vim.g.my_ui.bg_alt, gui = "bold" } },
              replace = { a = { fg = vim.g.my_colors.red, bg = vim.g.my_ui.bg_alt, gui = "bold" } },
            },
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = {},
            always_divide_middle = false,
            globalstatus = true,
          },
          diff_color = {
            added = { fg = vim.g.my_colors.green },
            modified = { fg = vim.g.my_colors.yellow },
            removed = { fg = vim.g.my_colors.red },
          },
          diagnostics_color = {
            color_error = { fg = vim.g.my_colors.red },
            color_warn = { fg = vim.g.my_colors.yellow },
            color_info = { fg = vim.g.my_colors.blue },
            color_hint = { fg = vim.g.my_colors.white },
          },
          sections = {
            lualine_a = { "mode" },
            lualine_b = { "diagnostics" },
            lualine_c = {
              { "filename", file_status = true, symbols = { modified = " " .. vim.g.my_icons.modified } },
              "location",
              "progress",
            },
            lualine_x = { "encoding", "fileformat" },
            lualine_y = { "branch" },
            lualine_z = { "diff" },
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
          extensions = { "nvim-tree" },
        })
      end,
    })
  end,
}
