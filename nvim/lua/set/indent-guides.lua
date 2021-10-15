return {
  setup = function(use)
    use({
      "glepnir/indent-guides.nvim",

      config = function()
        require("indent_guides").setup({
          indent_soft_pattern = "\\s",
          even_colors = { fg = "#131B24", bg = "#283247" },
          odd_colors = { fg = "#283247", bg = "#131B24" },
        })
      end,
    })
  end,
}
