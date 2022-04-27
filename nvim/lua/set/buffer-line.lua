return {
  setup = function(use)
    use({
      "akinsho/nvim-bufferline.lua",
      tag = "*",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
      config = function()
        require("bufferline").setup({
          options = {
            modified_icon = vim.g.my_icons.modified,
            max_name_length = 32,
            tab_size = 22,
            indicator_icon = "",
            show_close_icon = false,
            show_buffer_close_icons = false,
            always_show_bufferline = true,
          },
        })
      end,
    })
  end,
}
