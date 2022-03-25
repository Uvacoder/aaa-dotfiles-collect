return {
  setup = function(use)
    use({
      "akinsho/nvim-bufferline.lua",

      -- requires = { "kyazdani42/nvim-web-devicons", opt = true },

      config = function()
        local ui_colors = vim.g.my_ui_colors

        require("bufferline").setup({
          options = {
            diagnostics = false,
            modified_icon = vim.g.my_icons.modified,
            show_buffer_icons = false,
            indicator_icon = "",
            show_close_icon = false,
            show_buffer_close_icons = false,
            enforce_regular_tabs = false,
            always_show_bufferline = true,
            separator_style = { "", "" },
            offsets = {
              { filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left" },
            },
          },
          highlights = {
            buffer_selected = { gui = "bold" },
            background = { guibg = ui_colors.bg_alt },
            fill = { guibg = ui_colors.bg_alt },
            tab = { guibg = ui_colors.bg },
          },
        })

        -- delete buffer
        vim.keymap.set("n", "bl", ":BufferLineCloseLeft<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "br", ":BufferLineCloseRight<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
