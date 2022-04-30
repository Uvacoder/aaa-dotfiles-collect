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
          highlights = {},
          diagnostics = {
            darker = true,
            undercurl = true,
            background = true,
          },
        })
        require("onedark").load()

        vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = vim.g.my.colors.black })

        vim.cmd("highlight! link Terminal NormalFloat")
        vim.cmd("highlight! link CmpPmenu NormalFloat")
        vim.cmd("highlight! link CmpPmenuBorder FloatBorder")
        vim.cmd("highlight! link NeoTreeNormal NormalFloat")
        vim.cmd("highlight! link NeoTreeFloatBorder FloatBorder")
        vim.cmd("highlight! link NeoTreeEndOfBuffer NormalFloat")
        vim.cmd("highlight! link NeoTreeCursorLine PmenuSel")
      end,
    })
  end,
}
