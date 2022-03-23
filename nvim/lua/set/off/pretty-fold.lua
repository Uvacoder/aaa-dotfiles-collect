return {
  setup = function(use)
    use({

      "anuvyklack/pretty-fold.nvim",

      config = function()
        require("pretty-fold").setup({})
        require("pretty-fold.preview").setup({
          key = "h", -- 'h', 'l' or nil (if you would like to set your own keybinding)
          border = "single",
        })
      end,
    })
  end,
}
