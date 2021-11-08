return {
  setup = function(use)
    use({
      'kristijanhusak/orgmode.nvim', branch = 'tree-sitter',

      requires = {
        'nvim-treesitter/nvim-treesitter'
      },

      config = function()
        require('orgmode').setup{}
      end,
    })
  end,
}
