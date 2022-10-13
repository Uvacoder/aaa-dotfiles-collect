-- https://github.com/windwp/nvim-autopairs
return {
  setup = function(use)
    use({
      'windwp/nvim-autopairs',
      config = function()
        require('nvim-autopairs').setup({})
      end,
    })
  end,
}