return {
  setup = function(use)
    use {
      'ojroques/nvim-hardline',

      config = function()
        require('hardline').setup {
          bufferline = true,
          -- theme = 'nord'
          theme = 'one'
        }
      end
    }
  end
}
