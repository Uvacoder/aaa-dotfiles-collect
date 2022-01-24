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
            variable = { style = "NONE" },
            variableBuiltIn = { style = "NONE" },
            parameter = { style = "italic" },
          },
        })
      end,
    })
  end,
}
