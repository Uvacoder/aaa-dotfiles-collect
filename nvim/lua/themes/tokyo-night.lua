return {
  setup = function(use)
    use({
      "folke/tokyonight.nvim",

      config = function()
        vim.g.tokyonight_style = "storm" -- storm, night
        vim.g.tokyonight_terminal_colors = true
        vim.g.tokyonight_italic_comments = true
        vim.g.tokyonight_italic_keywords = false
        vim.g.tokyonight_italic_functions = false
        vim.g.tokyonight_italic_variables = false
        vim.g.tokyonight_transparent = false
        vim.g.tokyonight_transparent_sidebar = false
        vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer", "NeoTree" }
        vim.g.tokyonight_dark_sidebar = true
        vim.g.tokyonight_dark_float = true
        vim.g.tokyonight_hide_inactive_statusline = true

        vim.g.tokyonight_colors = {
          bg = vim.g.my.colors.bg,
          bg_float = vim.g.my.colors.float,
          bg_statusline = vim.g.my.colors.statusline,
          error = vim.g.my.colors.red,
          warning = vim.g.my.colors.yellow,
          info = vim.g.my.colors.blue,
          hint = vim.g.my.colors.white,
          gitSigns = {
            delete = vim.g.my.colors.red,
            change = vim.g.my.colors.yellow,
            add = vim.g.my.colors.green,
          },
        }

        vim.cmd([[colorscheme tokyonight]])

        vim.cmd([[
          highlight! link CmpPmenu NormalFloat
          highlight! link CmpPmenuBorder FloatBorder
          highlight! link NeoTreeNormal NormalFloat
          highlight! link NeoTreeNormalNC NormalFloat
          highlight! link NeoTreeFloatBorder FloatBorder
          highlight! link NeoTreeEndOfBuffer NormalFloat
          highlight! link NeoTreeCursorLine PmenuSel
          highlight! link TabLineFill Statusline
          ]])
      end,
    })
  end,
}
