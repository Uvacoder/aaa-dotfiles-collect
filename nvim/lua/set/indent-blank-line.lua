return {
  setup = function(use)
    use({
      "lukas-reineke/indent-blankline.nvim",

      config = function()
        require("indent_blankline").setup({
          char = "",
          space_char_blankline = " ",
          show_current_context = true,
          show_current_context_start = false,
          indent_blankline_buftype_exclude = { "terminal", "nofile" },
          indent_blankline_filetype_exclude = { "help", "startify", "packer", "NvimTree", 'ctrlsf', },
        })
      end,
    })
  end,
}
