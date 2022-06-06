return {
  setup = function(use)
    use({
      "hoob3rt/lualine.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        local file_modified = require("mnml.plugins.config.lualine.utils").file_modified
        local lsp_active = require("mnml.plugins.config.lualine.utils").lsp_active
        local diff_color = require("mnml.plugins.config.lualine.utils").diff_color
        local diagnostics_color = require("mnml.plugins.config.lualine.utils").diagnostics_color
        local theme = require("mnml.plugins.config.lualine.theme")

        require("lualine").setup({
          options = {
            icons_enabled = false,
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = {},
            always_divide_middle = false,
            globalstatus = true,
            theme = theme,
          },
          diff_color = diff_color,
          diagnostics_color = diagnostics_color,
          sections = {
            lualine_a = { "mode" },
            lualine_b = {
              "diagnostics",
              { "filename", file_status = false },
              { file_modified, color = { fg = vim.g.my.colors.yellow } },
            },
            lualine_c = { "location", "progress" },
            lualine_x = { "encoding", "fileformat" },
            lualine_y = { lsp_active },
            lualine_z = { "branch", "diff" },
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
          extensions = { "neo-tree" },
        })
      end,
    })
  end,
}
