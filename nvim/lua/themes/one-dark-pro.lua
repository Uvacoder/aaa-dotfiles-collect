return {
  setup = function(use)
    use({
      "olimorris/onedarkpro.nvim",
      config = function()
        local onedarkpro = require("onedarkpro")
        onedarkpro.setup({
          theme = "onedark",
          colors = {
            onedark = {
              bg = "#000000",
              fg = "#abb2bf",
              red = "#FB467B",
              orange = "#EF8A17",
              yellow = "#e5c07b",
              green = "#8CCB76",
              cyan = "#56D6B4",
              blue = "#53AAF4",
              purple = "#CB6CFE",
              white = "#abb2bf",
              black = "#282c34",
              gray = "#5c6370",
            },
          },
          hlgroups = {},
          filetype_hlgroups = {},
          styles = {
            comments = "italic",
            functions = "bold",
          },
          options = {
            bold = true,
            italic = true,
            underline = true,
            undercurl = true,
            terminal_colors = true,
          },
        })
        onedarkpro.load()
      end,
    })
  end,
}
