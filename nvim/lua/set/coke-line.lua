return {
  setup = function(use)
    use({
      "noib3/nvim-cokeline",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        local get_hex = require("cokeline/utils").get_hex

        require("cokeline").setup({
          default_hl = {
            fg = function(buffer)
              return buffer.is_focused and get_hex("Normal", "fg") or get_hex("Comment", "fg")
            end,
            bg = function(buffer)
              return buffer.is_focused and "#000000" or "#0c0e15"
            end,
          },

          components = {
            {
              text = function(buffer)
                return (buffer.index ~= 1) and "" or ""
              end,
              fg = get_hex("Comment", "fg"),
            },
            {
              text = function(buffer)
                return "    " .. buffer.devicon.icon
              end,
              fg = function(buffer)
                return buffer.is_focused and buffer.devicon.color or get_hex("Comment", "fg")
              end,
            },
            {
              text = function(buffer)
                return buffer.filename .. "    "
              end,
              style = function(buffer)
                return buffer.is_focused and "bold" or nil
              end,
            },
            -- {
            --   text = "",
            --   delete_buffer_on_left_click = true,
            -- },
            {
              text = "  ",
            },
          },
        })
      end,
    })
  end,
}
