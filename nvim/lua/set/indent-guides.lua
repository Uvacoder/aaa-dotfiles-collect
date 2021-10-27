return {
  setup = function(use)
    use({
      "glepnir/indent-guides.nvim",

      config = function()
        require("indent_guides").setup({
          indent_guide_size = 2,
          indent_soft_pattern = "\\s",
          even_colors = { fg = "#000000", bg = "#0F1117" },
          odd_colors = { fg = "#0F1117", bg = "#000000" },
        })
      end,
    })
  end,
}
