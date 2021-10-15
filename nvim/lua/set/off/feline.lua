return {
  setup = function(use)
    use({
      "famiu/feline.nvim",

      config = function()
        require("feline").setup({
          -- colors = { bg = '#000000', fg = '#ffffff' },
          preset = "noicon",
        })
      end,
    })
  end,
}
