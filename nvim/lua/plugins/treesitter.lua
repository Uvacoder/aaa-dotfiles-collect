return {
  setup = function(use)
    use({
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('nvim-treesitter.configs').setup({
          ensure_installed = {
            'css',
            'scss',
            'lua',
            'html',
            'vue',
            'javascript',
            'json',
            'typescript',
            'astro',
          },
          highlight = { enable = true, additional_vim_regex_highlighting = true },
          indent = { enable = true },
          -- Configure kommentary with nvim-ts-context-commentstring
          context_commentstring = { enable = true, enable_autocmd = false },
        })
      end,
    })
  end,
}
