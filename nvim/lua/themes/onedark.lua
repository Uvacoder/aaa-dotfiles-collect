return {
  setup = function(use)
    use {
      'navarasu/onedark.nvim',

      config = function()
        vim.g.onedark_diagnostics_undercurl = false
        vim.g.onedark_transparent_background = true
        vim.g.onedark_style = 'darker'
        require('onedark').setup()
      end
    }
  end
}
