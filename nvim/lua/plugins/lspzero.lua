-- https://github.com/VonHeikemen/lsp-zero.nvim
return {
  setup = function(use)
    use({
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-cmdline',
        -- Snippets
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
        -- pictograms
        'onsails/lspkind.nvim'
      },
      config = function()
        require('mason.settings').set({ ui = { border = 'rounded' } })
        require('luasnip/loaders/from_vscode').lazy_load()

        local lsp = require('lsp-zero')
        lsp.preset('recommended')
        lsp.ensure_installed({ 'eslint', 'astro', 'volar' })
        lsp.setup()

        vim.diagnostic.config({ virtual_text = false, signs = false, update_in_insert = true })
        
        local cmp = require('cmp')
        local lspkind = require('lspkind')
        local cmp_config = lsp.defaults.cmp_config({
          window = {
            documentation = { border = vim.g.border_style },
            completion = { border = vim.g.border_style },
          },
          experimental = { ghost_text = true }, 
          formatting = {
            fields = { 'kind', 'abbr', 'menu' },
            format = lspkind.cmp_format({ mode = 'symbol' })
          },
        })
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({{ name = 'path' }}, {{ name = 'cmdline' }}),
        })
        cmp.setup(cmp_config)
      end,
    })
  end,
}
