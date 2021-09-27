return {
  setup = function(use)
    use {
      { 'rose-pine/neovim', as = 'rose-pine'},
            
      config = function()
        vim.g.rose_pine_enable_italics = true
        vim.g.rose_pine_disable_background = true

        require('rose-pine').set()

        -- fix colors
        vim.api.nvim_command("hi! EndOfBuffer guifg=#000000")
        vim.api.nvim_command("hi! NonText guifg=#000000")
        vim.api.nvim_command("hi! link CursorLineNr Normal")
        vim.api.nvim_command("hi! Comment gui=italic")
      end
    }
  end
}
