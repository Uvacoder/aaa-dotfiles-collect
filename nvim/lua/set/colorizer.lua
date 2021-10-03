return {
  setup = function(use)
    use {
      'norcalli/nvim-colorizer.lua',

      cmd = 'ColorizerToggle',

      config = function()
        require('colorizer').setup({
          '*',
          names = false
        })
      end
    }
  end
}
