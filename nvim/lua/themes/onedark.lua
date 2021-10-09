return {
  setup = function(use)
    use {
      'navarasu/onedark.nvim',

      config = function()
        vim.g.onedark_diagnostics_undercurl = false
        vim.g.onedark_transparent_background = true
        vim.g.onedark_style = 'deep'
        require('onedark').setup()

        -- fix colors
        vim.api.nvim_command("hi! EndOfBuffer guifg=#000000")
        vim.api.nvim_command("hi! NonText guifg=#000000")
      end
    }
  end
}
