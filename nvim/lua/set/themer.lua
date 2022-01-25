return {
  setup = function(use)
    use({
      "themercorp/themer.lua",

      config = function()
        require("themer").setup({
          colorscheme = "kanagawa",
          styles = {
            ["function"] = { style = "bold" },
            functionbuiltin = { style = "bold" },
            parameter = { style = "italic" },
          },
          remaps = {
            palette = {
              kanagawa = {
                bg = {
                  base = "#000000",
                  alt = "#2a2a37",
                },
              },
            },
          },
        })
      end,
    })
  end,
}
