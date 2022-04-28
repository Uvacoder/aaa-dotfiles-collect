return {
  setup = function(use)
    use({
      "mvllow/modes.nvim",
      event = "BufRead", -- optional lazy loading
      config = function()
        require("modes").setup({
          colors = {
            copy = vim.g.my.colors.white,
            delete = vim.g.my.colors.red,
            insert = vim.g.my.colors.green,
            visual = vim.g.my.colors.yellow,
          },
          line_opacity = 0.4,
          set_cursorline = false,
          set_number = false,
          set_cursor = true,
          focus_only = false,
        })
      end,
    })
  end,
}
