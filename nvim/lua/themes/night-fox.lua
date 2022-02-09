return {
  setup = function(use)
    use({
      "EdenEast/nightfox.nvim",

      config = function()
        local nightfox = require("nightfox")
        nightfox.setup({
          fox = "duskfox", -- nightfox, nordfox, duskfox
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
          colors = {},
          hlgroups = {},
        })

        nightfox.load()
      end,
    })
  end,
}
