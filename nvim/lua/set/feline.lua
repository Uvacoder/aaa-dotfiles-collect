return {
  setup = function(use)
    use {
      'famiu/feline.nvim',

      config = function()
        require('feline').setup({
            preset = 'noicon'
        })
      end
    }
  end
}
