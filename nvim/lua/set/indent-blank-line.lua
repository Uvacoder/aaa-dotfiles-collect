return {
  setup = function(use)
    use({
      "lukas-reineke/indent-blankline.nvim",

      config = function()
        require("indent_blankline").setup({
          char = "│",
          space_char_blankline = " ",
          show_current_context = true,
          show_current_context_start = true,
        })

        vim.cmd([[highlight IndentBlanklineChar guifg=#121212 gui=nocombine]])
      end,
    })
  end,
}
