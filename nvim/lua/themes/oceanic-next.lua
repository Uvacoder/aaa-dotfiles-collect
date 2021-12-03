return {
  setup = function(use)
    use({
      "mhartington/oceanic-next",

      requires = {
        'othree/yajs.vim',
        'othree/html5.vim',
        'HerringtonDarkholme/yats.vim'
      },

      config = function()
        vim.g.oceanic_next_terminal_bold = 1
        vim.g.oceanic_next_terminal_italic = 1
        vim.cmd([[colorscheme OceanicNext]])

        vim.cmd([[
          hi Normal guibg=NONE ctermbg=NONE
          hi LineNr guibg=NONE ctermbg=NONE
          hi SignColumn guibg=NONE ctermbg=NONE
          hi EndOfBuffer guibg=NONE ctermbg=NONE
        ]])
      end,
    })
  end,
}
