return {
  setup = function(use)
    use({
      "mhartington/oceanic-next",

      config = function()
        vim.g.oceanic_next_terminal_bold = 1
        vim.g.oceanic_next_terminal_italic = 1

        vim.cmd([[colorscheme OceanicNext]])

        -- transparancy
        vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
        vim.cmd([[hi LineNr guibg=NONE ctermbg=NONE]])
        vim.cmd([[hi SignColumn guibg=NONE ctermbg=NONE]])
        vim.cmd([[hi EndOfBuffer guibg=NONE ctermbg=NONE]])
      end,
    })
  end,
}
