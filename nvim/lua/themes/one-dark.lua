return {
  setup = function(use)
    use({
      "ful1e5/onedark.nvim",

      config = function()
        require("onedark").setup({
          function_style = "bold",
          comment_style = "italic",
          keyword_style = "NONE",
          variable_style = "NONE",
          hide_inactive_statusline = false,
          dark_sidebar = true,
          dark_float = true,
          highlight_linenumber = false,
          hide_end_of_buffer = true,
          transparent = true,
          transparent_sidebar = true,
          sidebars = { "qf", "vista_kind", "terminal", "packer" },

          colors = {
            bg0 = vim.g.my_colors.bg,
            bg1 = vim.g.my_colors.bg_alt,
            -- bg_float = vim.g.my_colors.bg_alt,
            -- bg_sidebar = vim.g.my_colors.bg_alt,
            bg_linenumber = vim.g.my_colors.bg,
            error = vim.g.my_colors.red,
            warning = vim.g.my_colors.yellow,
            info = vim.g.my_colors.blue,
            hint = vim.g.my_colors.white,
            git_signs = {
              delete = vim.g.my_colors.red,
              change = vim.g.my_colors.yellow,
              add = vim.g.my_colors.green,
            },
          },
        })
      end,
    })
  end,
}
