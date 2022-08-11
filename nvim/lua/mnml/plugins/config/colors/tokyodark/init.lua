-- https://github.com/dobbbri/tokyodark.nvim
return {
  setup = function(use)
    use({
      'dobbbri/tokyodark.nvim',
      config = function()
        vim.g.tokyodark_transparent_background = false
        vim.g.tokyodark_enable_italic_comment = true
        vim.g.tokyodark_enable_italic = true
        -- vim.g.tokyodark_color_gamma = "1.0"
        vim.cmd("colorscheme tokyodark")
      end,
    })
  end,
}
