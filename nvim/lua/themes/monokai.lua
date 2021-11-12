return {
  setup = function(use)
    use({
      "tanvirtin/monokai.nvim",

      config = function()
        local monokai = require("monokai")
        local palette = monokai.pro
        monokai.setup({
          palette = {
            black = "#26292C",
            base2 = "#000000",
          },
        })
      end,
    })
  end,
}
