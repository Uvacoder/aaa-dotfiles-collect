return {
  setup = function(use)
    use({
      "tiagovla/tokyodark.nvim",

      config = function()
        vim.g.tokyodark_transparent_background = true
        vim.g.tokyodark_enable_italic_comment = true
        vim.g.tokyodark_enable_italic = false
        vim.g.tokyodark_color_gamma = "1.0"

        vim.cmd([[colorscheme tokyodark]])
      end,
    })
  end,
}
