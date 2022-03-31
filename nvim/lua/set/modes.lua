return {
  setup = function(use)
    use({
      "mvllow/modes.nvim",
      event = "BufRead", -- optional lazy loading
      config = function()
        require("modes").setup({
          colors = {
            copy = vim.g.my_colors.yellow,
            delete = vim.g.my_colors.red,
            insert = vim.g.my_colors.blue,
            visual = vim.g.my_colors.purple,
          },
          line_opacity = 0.4,
          set_cursor = true,
          focus_only = false,
        })
      end,
    })
  end,
}
