return {
  setup = function(use)
    use({
      "lukas-reineke/indent-blankline.nvim",

      config = function()
        require("indent_blankline").setup({
          char = "│",
          space_char_blankline = " ",
          show_current_context = true,
          show_current_context_start = false,
        })

        vim.cmd([[highlight IndentBlanklineChar guifg=#000000 gui=nocombine]])
      end,
    })
  end,
}
