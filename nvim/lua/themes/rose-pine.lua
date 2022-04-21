return {
  setup = function(use)
    use({
      "rose-pine/neovim",
      as = "rose-pine",
      tag = "v1.*",
      config = function()
        require("rose-pine").setup({
          ---@usage 'main'|'moon'
          dark_variant = "main",
          bold_vert_split = false,
          dim_nc_background = false,
          disable_background = false,
          disable_float_background = false,
          disable_italics = false,
          ---@usage string hex value or named color from rosepinetheme.com/palette
          groups = {
            background = vim.g.my_ui_colors.bg,
            panel = vim.g.my_ui_colors.bg_alt,
            border = "highlight_med",

            error = vim.g.my_colors.red,
            warn = vim.g.my_colors.yellow,
            info = vim.g.my_colors.blue,
            hint = vim.g.my_colors.white,
          },
          -- Change specific vim highlight groups
          highlight_groups = {
            IndentBlanklineChar = { fg = vim.g.my_ui_colors.bg },
            NeoTreeNormal = { link = "NvimTreeNormal" },
          },
        })
        vim.cmd("colorscheme rose-pine")
      end,
    })
  end,
}
