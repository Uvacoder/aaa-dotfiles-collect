return {
  setup = function(use)
    use({
      "rose-pine/neovim",
      as = "rose-pine",
      tag = "v1.*",

      config = function()
        require("rose-pine").setup({
          dark_variant = "main", -- 'main'|'moon'
          bold_vert_split = false,
          dim_nc_background = false,
          disable_background = false,
          disable_float_background = true,
          disable_italics = false,
          groups = {
            background = vim.g.my_ui_colors.bg,
            panel = vim.g.my_ui_colors.bg_alt,
            border = vim.g.my_ui_colors.fg,
            comment = "muted",

            error = vim.g.my_colors.red,
            warn = vim.g.my_colors.yellow,
            info = vim.g.my_colors.blue,
            hint = vim.g.my_colors.white,

            git_add = vim.g.my_colors.green,
            git_change = vim.g.my_colors.yellow,
            git_delete = vim.g.my_colors.red,
          },
        })

        vim.cmd([[colorscheme rose-pine]])

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my_ui_colors.bg })
      end,
    })
  end,
}
