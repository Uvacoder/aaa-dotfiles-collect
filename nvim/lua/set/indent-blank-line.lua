return {
  setup = function(use)
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup({
          char = "│",
          show_current_context = true,
          show_current_context_start = false,
          show_trailing_blankline_indent = false,
        })
      end,
    })
  end,
}
