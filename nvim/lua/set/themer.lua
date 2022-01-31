return {
  setup = function(use)
    use({
      "themercorp/themer.lua",

      config = function()
        local theme = "rose_pine_moon"
        -- everforest, doom_one, dracula, kurai, kanagawa, tokyodark, rose_pine_moon

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
