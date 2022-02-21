return {
  setup = function(use)
    use({
      "EdenEast/nightfox.nvim",

      config = function()
        local nightfox = require("nightfox")
        nightfox.setup({
          fox = "nightfox", -- nightfox, nordfox, duskfox
          transparent = true,
          alt_nc = true,
          terminal_colors = true,
          styles = {
            comments = "italic",
            functions = "bold",
            keywords = "NONE",
            strings = "NONE",
            variables = "NONE",
          },
          inverse = {
            match_paren = true,
            visual = true,
            search = true,
          },
          colors = {
            bg = vim.g.my_colors.bg,
            bg_alt = vim.g.my_colors.bg_alt,
            error = vim.g.my_colors.red,
            warning = vim.g.my_colors.yellow,
            info = vim.g.my_colors.blue,
            hint = vim.g.my_colors.white,
            gitSigns = {
              delete = vim.g.my_colors.red,
              change = vim.g.my_colors.yellow,
              add = vim.g.my_colors.green,
            },
          },
          hlgroups = {},
        })

        nightfox.load()
      end,
    })
  end,
}
