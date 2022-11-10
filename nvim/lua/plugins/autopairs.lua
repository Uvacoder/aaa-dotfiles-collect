-- https://github.com/windwp/nvim-autopairs
return {
  setup = function(use)
    use({
      "windwp/nvim-autopairs",
      requires = "nvim-treesitter/nvim-treesitter",
      config = function()
        require("nvim-autopairs").setup({})
      end,
    })
  end,
}
