return {
  setup = function(use)
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup({
          char = " ",
          indent_blankline_char_blankline = "│",
          show_current_context = true,
          show_current_context_start = false,
        })
      end,
    })
  end,
}
