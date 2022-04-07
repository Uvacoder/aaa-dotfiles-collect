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
        vim.g.tokyonight_transparent = true
        vim.g.tokyonight_transparent_sidebar = true
        vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer", "NvimTree" }
        vim.g.tokyonight_dark_sidebar = false
        vim.g.tokyonight_dark_float = true
        vim.g.tokyonight_hide_inactive_statusline = true

        vim.g.tokyonight_colors = {
          bg = vim.g.my_ui_colors.bg,

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

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })
      end,
    })
  end,
}
