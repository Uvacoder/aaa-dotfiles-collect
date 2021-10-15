return {
  setup = function(use)
    use({
      "Murtaza-Udaipurwala/gruvqueen",

      config = function()
        require("gruvqueen").setup({
          config = {
            disable_bold = true,
            italic_comments = true,
            italic_keywords = true,
            italic_functions = false,
            italic_variables = false,
            invert_selection = true,
            style = "mix", -- possible values: 'original', 'mix', 'material'
            transparent_background = true,
            -- bg_color = "black",
          },
        })
      end,
    })
  end,
}
