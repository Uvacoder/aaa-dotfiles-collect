return {
  setup = function(use)
    use({
      "noib3/nvim-cokeline",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        local get_hex = require("cokeline/utils").get_hex
        local comments_fg = get_hex('Comment', 'fg')
        local normal_bg =  get_hex("Normal", "bg")
        local tabline_bg = get_hex("Tabline", "bg")

        local errors_fg = vim.g.my.colors.yellow
        local warnings_fg = vim.g.my.colors.yellow

        require("cokeline").setup({
          default_hl = {
            fg = function(buffer)
              return  buffer.is_focused and "#ffffff" and "bold" or comments_fg
            end,
            bg = function(buffer)
              return (buffer.diagnostics.errors ~= 0 and errors_fg)
              or (buffer.diagnostics.warnings ~= 0 and warnings_fg)
              or normal_bg
              -- return buffer.is_focused and normal_bg or tabline_bg
            end,
          },

          components = {
            {
              text = function(buffer)
                return (buffer.index ~= 1) and "" or ""
              end,
              fg = comments_fg,
            },
            {
              text = function(buffer)
                return "    " .. buffer.devicon.icon
              end,
              fg = function(buffer)
                return buffer.is_focused and buffer.devicon.color or comments_fg
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
