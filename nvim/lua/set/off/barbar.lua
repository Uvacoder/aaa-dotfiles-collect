return {
  setup = function(use)
    use({
      "romgrk/barbar.nvim",

      requires = "kyazdani42/nvim-web-devicons",

      config = function()
        vim.g.bufferline = {
          auto_hide = true,
          tabpages = true,
          closable = true,
          icons = true,
          icon_separator_active = "",
          icon_separator_inactive = "",
          icon_close_tab = "",
          icon_close_tab_modified = "●",
          insert_at_end = true,
          maximum_padding = 1,
          maximum_length = 30,
        }
        vim.keymap.set("n", "bc", ":BufferClose<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
