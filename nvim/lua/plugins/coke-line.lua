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
              return buffer.is_focused and vim.g.my.colors.dark_gray or vim.g.my.colors.black
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
                return buffer.filename .. " "
              end,
              style = function(buffer)
                return buffer.is_focused and "bold" or nil
              end,
            },
            {
              text = function(buffer)
                return buffer.is_modified and "" or " "
              end,
              fg = function(buffer)
                return buffer.is_modified and vim.g.my.colors.yellow or nil
              end,
            },
            {
              text = "  ",
            },
          },
        })
      end,
    })
  end,
}
