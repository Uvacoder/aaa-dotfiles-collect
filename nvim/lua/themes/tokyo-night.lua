vim.g.my_ui_colors = {
  fg = "#6e6a86",
  bg = "#191724",
  bg_alt = "#1F1D2E",
}

return {
  setup = function(use)
    use({
      "folke/tokyonight.nvim",

      config = function()
        vim.g.tokyonight_style = "storm" -- storm, night
        vim.g.tokyonight_terminal_colors = false
        vim.g.tokyonight_italic_comments = true
        vim.g.tokyonight_italic_keywords = false
        vim.g.tokyonight_italic_functions = false
        vim.g.tokyonight_italic_variables = false
        vim.g.tokyonight_transparent = false
        vim.g.tokyonight_transparent_sidebar = false
        vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
        vim.g.tokyonight_dark_sidebar = true
        vim.g.tokyonight_dark_float = true
        vim.g.tokyonight_hide_inactive_statusline = false

        vim.g.tokyonight_colors = {
          bg = vim.g.my_ui_colors.bg,
          -- bg_alt = vim.g.my_ui_colors.bg_alt,
          -- bg_sidebar = vim.g.my_ui_colors.bg_alt,

          error = vim.g.my_colors.red,
          warning = vim.g.my_colors.yellow,
          info = vim.g.my_colors.blue,
          hint = vim.g.my_colors.white,
          gitSigns = {
            delete = vim.g.my_colors.red,
            change = vim.g.my_colors.yellow,
            add = vim.g.my_colors.green,
          },
        }

        -- Load the colorscheme
        vim.cmd([[colorscheme tokyonight]])

        --         vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = vim.g.my_colors.green })
        --         vim.api.nvim_set_hl(0, "GitSignsChange", { fg = vim.g.my_colors.yellow })
        --         vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = vim.g.my_colors.red })
        --         vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = vim.g.my_colors.purple })
        --
        --         vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = vim.g.my_colors.blue })
        --         vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = vim.g.my_colors.yellow })
        --         vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = vim.g.my_colors.red })

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })
      end,
    })
  end,
}
