-- https://github.com/windwp/nvim-autopairs
return {
  setup = function(use)
    use({
      "j-hui/fidget.nvim",
      config = function()
        require('fidget').setup({})
      end,
    })
  end,
}