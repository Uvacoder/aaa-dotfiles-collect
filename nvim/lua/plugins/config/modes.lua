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
          set_cursorline = false,
          line_opacity = 0.25,
          set_number = true,
          set_cursor = true,
          ignore_filetypes = { "NvimTree", "TelescopePrompt" },
        })
      end,
    })
  end,
}
