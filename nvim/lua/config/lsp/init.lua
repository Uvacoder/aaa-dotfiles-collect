return {
  setup = function(use)
    use({
      'neovim/nvim-lspconfig',

      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'williamboman/mason.nvim',
      },

      config = function()
        local map = require('utils').map

        -- Diagnostic keymaps
        map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
        map('n', '<leader>d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
        map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')

        local on_attach = require("config.lsp.common").on_attach

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

        -- Manson
        require('mason').setup({
          ui = {
            check_outdated_packages_on_open = true,
            border = vim.g.border_style,
          },
        })

        require('lspconfig').eslint.setup({})

        require('lspconfig').tsserver.setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })

        require('lspconfig').volar.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          filetypes = {
            'typescript',
            'javascript',
            'javascriptreact',
            'typescriptreact',
            'vue',
            'json',
          },
        })

        require('config.lsp.handlers')
      end,
    })
  end,
}
