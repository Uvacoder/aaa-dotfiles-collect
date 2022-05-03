return {
  setup = function(use)
    use({
      "navarasu/onedark.nvim",
      config = function()
        require("onedark").setup({
          style = "deep",
          transparent = false,
          term_colors = false,
          ending_tildes = false,
          cmp_itemkind_reverse = false,
          code_style = {
            comments = "italic",
            keywords = "italic",
            functions = "bold",
            strings = "none",
            variables = "none",
          },
          colors = {
            bg0 = vim.g.my.colors.black,
            bg1 = vim.g.my.colors.gray,
          },
          highlights = {
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
