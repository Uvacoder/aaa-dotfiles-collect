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
              bg = vim.g.my_ui.bg,
              fg = "#93a4c3",
              red = "#f65866",
              orange = "#ee9025",
              yellow = "#f2cc81",
              green = "#8bcd5b",
              cyan = "#56D6B4",
              blue = "#54b0fd",
              purple = "#CB6CFE",
              white = "#abb2bf",
              black = "#282c34",
              gray = "#5c6370",
            },
            diff_add = vim.g.my_colors.green,
            diff_delete = vim.g.my_colors.red,
            diff_text = vim.g.my_colors.yellow,
            virtual_text_error = vim.g.my_colors.red,
            virtual_text_warning = vim.g.my_colors.yellow,
            virtual_text_information = vim.g.my_colors.blue,
            virtual_text_hint = vim.g.my_colors.white,
          },
          hlgroups = {
            NeoTreeNormal = { link = "NvimTreeNormal" },
            Terminal = { link = "NvimTreeNormal" },
          },
          filetype_hlgroups = {},
          styles = {
            comments = "italic",
            functions = "bold",
            keywords = "NONE",
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
