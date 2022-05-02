return {
  setup = function(use)
    use({
      "navarasu/onedark.nvim",
      config = function()
        require("onedark").setup({
          style = "deep",
          transparent = false,
          term_colors = true,
          ending_tildes = false,
          cmp_itemkind_reverse = false,
          code_style = {
            comments = "italic",
            keywords = "none",
            functions = "bold",
            strings = "none",
            variables = "none",
          },
          colors = {
            bg0 = "#000000",
            bg1 = "#0c0e15",
          },
          highlights = {
            -- FloatBorder = {fg = c.grey, bg = c.bg1},
            IndentBlanklineChar = { fg = vim.g.my.colors.black },
          },
          diagnostics = {
            darker = true,
            undercurl = true,
            background = true,
          },
        })
        require("onedark").load()

        vim.cmd([[
          highlight! link FloatBorder NormalFloat
          highlight! link CmpPmenu NormalFloat
          highlight! link CmpPmenuBorder FloatBorder
          highlight! link NeoTreeNormal NormalFloat
          highlight! link NeoTreeFloatBorder FloatBorder
          highlight! link NeoTreeEndOfBuffer NormalFloat
          highlight! link NeoTreeCursorLine PmenuSel
          ]])
      end,
    })
  end,
}
