return {
  setup = function(use)
    use({
      "themercorp/themer.lua",

      config = function()
        require("themer").setup({
          -- colorscheme = "kanagawa",
          colorscheme = "tokyodark",
          styles = {
            ["function"] = { style = "bold" },
            functionbuiltin = { style = "bold" },
            parameter = { style = "italic" },
          },
          remaps = {
            palette = {
              tokyodark = {
                bg = {
                  base = "#000000",
                  alt = "#181820",
                },
                diagnostic = {
                  hint = "#A400FF",
                  info = "#0087FF",
                  warn = "#FBFF00",
                  error = "#FF0000",
                },
                diff = {
                  add = "#00FF5F",
                  remove = "#FF0000",
                  text = "#0087FF",
                  change = "#FBFF00",
                },
              },
            },
          },
        })
      end,
    })
  end,
}
