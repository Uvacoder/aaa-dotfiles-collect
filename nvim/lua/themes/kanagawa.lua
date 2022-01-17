return {
  setup = function(use)
    use({
      "rebelot/kanagawa.nvim",

      config = function()
        -- Default options:
        require("kanagawa").setup({
          undercurl = true, -- enable undercurls
          commentStyle = "italic",
          functionStyle = "bold",
          keywordStyle = "NONE",
          statementStyle = "NONE",
          typeStyle = "NONE",
          variablebuiltinStyle = "NONE",
          specialReturn = true, -- special highlight for the return keyword
          specialException = true, -- special highlight for exception handling keywords
          transparent = true, -- do not set background color
          dimInactive = false, -- dim inactive window `:h hl-NormalNC`
          colors = {},
          overrides = {},
        })

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
      end,
    })
  end,
}
