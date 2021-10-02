return {
  setup = function(use)
    use {
      'norcalli/nvim-colorizer.lua',

      cmd = 'ColorizerToggle',

      config = function()
        require'colorizer'.setup()
      end
    }
  end
}
