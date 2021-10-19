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

        -- fix colors
        -- vim.api.nvim_command("hi! EndOfBuffer guifg=#000000")
        -- vim.api.nvim_command("hi! NonText guifg=#000000")
        -- vim.api.nvim_command("hi! link CursorLineNr Normal")
      end,
    })
  end,
}
