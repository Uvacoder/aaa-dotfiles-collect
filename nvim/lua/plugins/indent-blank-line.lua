return {
  setup = function(use)
    use({
      "lukas-reineke/indent-blankline.nvim",
      config = function()
        require("indent_blankline").setup({
          char = "│",
          use_treesitter = true,
          show_first_indent_level = false,
          show_current_context = true,
          show_current_context_start = false,
          show_trailing_blankline_indent = false,
        })
      end,
    })
  end,
}
