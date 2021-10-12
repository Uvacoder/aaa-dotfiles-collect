return {
  setup = function(use)
    use {
      'shaunsingh/nord.nvim',

      config = function()
        vim.g.nord_contrast = true
        vim.g.nord_borders = false
        vim.g.nord_disable_background = true
        vim.g.nord_italic = true

        require('nord').set()
      end
    }
  end
}