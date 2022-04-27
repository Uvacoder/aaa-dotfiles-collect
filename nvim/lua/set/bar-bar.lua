return {
  setup = function(use)
    use({
      "romgrk/barbar.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
      config = function()
        vim.g.bufferline = {
          animation = false,
          auto_hide = false,
          tabpages = false,
          closable = false,
          clickable = false,
          icons = true,
          icon_custom_colors = false,
          icon_separator_active = "",
          icon_separator_inactive = "",
          icon_close_tab_modified = vim.g.my.icons.modified,
          icon_pinned = "車",

          insert_at_end = false,
          insert_at_start = true,
          maximum_padding = 1,
          maximum_length = 32,
          semantic_letters = true,
          letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
          no_name_title = nil,
        }
      end,
    })
  end,
}
