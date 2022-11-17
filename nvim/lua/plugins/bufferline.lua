-- https://github.com/akinsho/bufferline.nvim
return {
  setup = function(use)
    use({
      "akinsho/bufferline.nvim",
      tag = "v3.*",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("bufferline").setup({
          highlights = {
            buffer_selected = { bold = false, italic = false },
          },
          options = {
            show_close_icon = false,
            show_buffer_close_icons = false,
            separator_style = { "", "" },
            indicator = { icon = "▎", style = "none" }, -- style = 'icon'
            diagnostics = "nvim_lsp",
          },
        })
      end,
    })
  end,
}
