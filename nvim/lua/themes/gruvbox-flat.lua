return {
  setup = function(use)
    use({
      "eddyekofo94/gruvbox-flat.nvim",

      config = function()
        vim.g.gruvbox_italic_comments = true
        vim.g.gruvbox_transparent = true
        vim.g.gruvbox_hide_inactive_statusline = true
        vim.g.gruvbox_dark_sidebar = true
        vim.g.gruvbox_dark_float = true
        vim.g.gruvbox_sidebars = { "qf", "vista_kind", "terminal", "packer" }
        vim.g.gruvbox_colors = {
          bg = vim.g.my_colors.bg,
          bg2 = vim.g.my_colors.bg_alt,
          bg_popup = vim.g.my_colors.bg_alt,
          bg_float = vim.g.my_colors.bg_alt,
          bg_sidebar = vim.g.my_colors.bg_alt,
          error = vim.g.my_colors.red,
          warning = vim.g.my_colors.yellow,
          info = vim.g.my_colors.blue,
          hint = vim.g.my_colors.white,
          -- gitSigns = { delete = vim.g.my_colors.red, change = vim.g.my_colors.yellow, add = vim.g.my_colors.green },
        }
        vim.g.gruvbox_flat_style = "hard"

        vim.cmd([[colorscheme gruvbox-flat]])

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_colors.bg })
      end,
    })
  end,
}
