return {
  setup = function(use)
    use({
      "akinsho/nvim-bufferline.lua",

      config = function()
        require("bufferline").setup({
          options = {

            max_name_length = 22,
            tab_size = 22,
            -- offsets = { { filetype = "NvimTree", text = "File Explorer" } },
            indicator_icon = "",
            show_close_icon = false,
            show_buffer_close_icons = false,
            enforce_regular_tabs = true,
            always_show_bufferline = false,
            separator_style = { "", "" },
          },
          highlights = {
            buffer_selected = { gui = "bold" },
            background = { guibg = "#0F1117" },
            fill = { guibg = "#0F1117" },
            tab = { guibg = "#0F1117" },
          },
        })
      end,
    })
  end,
}
