-- https://github.com/tiagovla/tokyodark.nvim
return {
  setup = function(use)
    use({
      'tiagovla/tokyodark.nvim',
      config = function()
        vim.g.tokyodark_transparent_background = 0
        vim.g.tokyodark_enable_italic_comment = 1
        vim.g.tokyodark_enable_italic = 1
        vim.g.tokyodark_color_gamma = '1.0'
        vim.cmd('colorscheme tokyodark')
      end,
    })
  end,
}
