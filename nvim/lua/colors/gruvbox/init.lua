-- https://github.com/ellisonleao/gruvbox.nvim
return {
  setup = function(use)
    use({
      "ellisonleao/gruvbox.nvim",
      config = function()

        -- local bg_color = "#1D2021" -- default
        local bg_color = "#0B1015"
        local bg_popup = "#0B1015"

        require("gruvbox").setup({
          undercurl = true,
          underline = true,
          bold = true,
          italic = true,
          strikethrough = true,
          invert_selection = false,
          invert_signs = false,
          invert_tabline = false,
          invert_intend_guides = false,
          inverse = true, -- invert background for search, diffs, statuslines and errors
          contrast = "hard", -- can be "hard", "soft" or empty string
          overrides = {
            Normal = {bg = bg_color },
            SignColumn = {bg = bg_color},
            TabLineFill = {bg = bg_color},
            PMenu = {bg = bg_popup, fg = '#ffffff'},
            FloatBorder = {bg = bg_popup, fg = '#ffffff'},
            NormalFloat = {bg = bg_popup},
            NeoTreeFloatTitle = {bg = bg_popup},
            NeoTreeNormal = {bg = bg_popup},
            NeoTreeNormalNC = {bg = bg_popup},
            NeoTreeCursorLine = {bg = '#83A598', fg = bg_popup},
          }
        })

        vim.cmd("colorscheme gruvbox")
      end,
    })
  end,
}
