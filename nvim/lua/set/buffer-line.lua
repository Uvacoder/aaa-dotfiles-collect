return {
  setup = function(use)
    use({
      "akinsho/nvim-bufferline.lua",

      requires = { "kyazdani42/nvim-web-devicons", opt = true },

      config = function()
        require("bufferline").setup({
          options = {
            -- numbers = "buffer_id",
            max_name_length = 22,
            tab_size = 22,
            indicator_icon = "",
            show_close_icon = false,
            show_buffer_close_icons = false,
            enforce_regular_tabs = true,
            always_show_bufferline = false,
            separator_style = { "", "" },
          },
          highlights = {
            buffer_selected = { gui = "bold", guifg = "#FFD14E" },
            background = { guibg = "#0F1117" },
            fill = { guibg = "#0F1117" },
            tab = { guibg = "#0F1117" },
          },
        })

        -- delete buffer
        vim.api.nvim_set_keymap("n", "bl", ":BufferLineCloseLeft<CR>", { noremap = true, silent = true })
        vim.api.nvim_set_keymap("n", "br", ":BufferLineCloseRight<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
