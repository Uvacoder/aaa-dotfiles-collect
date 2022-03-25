return {
  setup = function(use)
    use({
      "noib3/nvim-cokeline",

      requires = "kyazdani42/nvim-web-devicons", -- If you want devicons

      config = function()
        local Hlgroup = require("cokeline/hlgroups").Hlgroup
        local get_hex = require("cokeline/utils").get_hex

        require("cokeline").setup({
          buffers = { new_buffers_position = "next" },
          rendering = { max_buffer_width = 40 },
          default_hl = {
            bg = function(buffer)
              return buffer.is_focused and vim.g.my_ui_colors.bg or vim.g.my_ui_colors.bg_alt
              -- return buffer.is_focused and get_hex("Normal", "bg") or get_hex("ColorColumn", "bg")
            end,
            fg = function(buffer)
              return buffer.is_focused and vim.g.my_colors.white or vim.g.my_ui_colors.fg
            end,
          },
          components = {
            { text = "  " },
            {
              text = function(buffer)
                return buffer.filename .. " "
              end,
              style = function(buffer)
                return buffer.is_focused and "bold" or nil
              end,
            },
            {
              text = function(buffer)
                return buffer.is_modified and " ●" or ""
              end,
              fg = function(buffer)
                return buffer.is_focused and vim.g.my_colors.yellow
              end,
            },
            { text = "  " },
          },
        })
      end,
    })
  end,
}
