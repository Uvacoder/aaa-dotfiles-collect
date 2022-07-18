return {
  setup = function(use)
    use({
      "mvllow/modes.nvim",
      event = "BufRead", -- optional lazy loading
      config = function()
        require("modes").setup({
          colors = {
            copy = vim.g.mnml.ui.colors.white,
            delete = vim.g.mnml.ui.colors.error,
            insert = vim.g.mnml.ui.colors.success,
            visual = vim.g.mnml.ui.colors.warning,
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
