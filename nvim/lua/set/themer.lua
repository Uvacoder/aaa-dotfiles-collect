return {
  setup = function(use)
    use({
      "themercorp/themer.lua",

      config = function()
        local theme = vim.g.my_theme
        local colors = vim.g.my_colors

        require("themer").setup({
          colorscheme = theme,
          styles = {
            ["function"] = { style = "bold" },
            functionbuiltin = { style = "bold" },
            parameter = { style = "italic" },
          },
          remaps = {
            palette = {
              [theme] = {
                bg = {
                  base = colors.bg,
                  alt = colors.bg_alt,
                },
                diagnostic = {
                  hint = colors.magenta,
                  info = colors.blue,
                  warn = colors.yellow,
                  error = colors.red,
                },
                diff = {
                  add = colors.green,
                  remove = colors.red,
                  text = colors.blue,
                  change = colors.yellow,
                },
              },
            },
          },
        })
      end,
    })
  end,
}
