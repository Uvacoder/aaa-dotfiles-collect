return {
  setup = function(use)
    use({
      'neovim/nvim-lspconfig',

      requires = {
        'hrsh7th/cmp-nvim-lsp',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
      },

      config = function()
        local buf_map = require('utils').buf_map
        local map = require('utils').map

        -- Diagnostic keymaps
        map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
        map('n', '<leader>d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
        map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')

        local on_attach = function(client, bufnr)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false

          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

          -- See `:help vim.lsp.*` for documentation on any of the below functions
          buf_map(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
          buf_map(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
          buf_map(bufnr, 'n', 'kk', '<cmd>lua vim.lsp.buf.hover()<CR>')
          buf_map(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
          buf_map(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
          buf_map(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
          buf_map(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
          buf_map(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
          buf_map(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
        end

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

        require('mason-lspconfig').setup({
          ensure_installed = {
            'volar',
            'tsserver',
            'eslint',
            'stylua',
            -- "cssls",
            -- "html",
            -- "tailwindcss"
          },
          automatic_installation = true,
        })

        -- config language server
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

        -- LSP settings (for overriding per client)
        vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
          border = vim.g.border_style,
        })

        vim.lsp.handlers['textDocument/signatureHelp'] =
          vim.lsp.with(vim.lsp.handlers.signature_help, {
            border = vim.g.border_style,
          })
      end,
    })
  end,
}
