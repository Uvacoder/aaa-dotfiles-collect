return {
  setup = function(use)
    use({
      'nvim-treesitter/nvim-treesitter',
      -- requires = { 'p00f/nvim-ts-rainbow'},
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
          highlight = { enable = true },
          indent = { enable = true },
          matchup = { enable = true },
          -- rainbow = { enable = true, extended_mode = true, max_file_lines = nil },
          context_commentstring = { enable = true, enable_autocmd = false },
        })
      end,
    })
  end,
}
