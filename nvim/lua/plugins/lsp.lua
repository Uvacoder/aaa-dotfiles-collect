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
        local opts = { noremap = true, silent = true }
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
        vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

        -- Use an on_attach function to only map the following keys after the language server attaches to the current buffer
        local on_attach = function(client, bufnr)
          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
          -- Mappings.
          local bufopts = { noremap = true, silent = true, buffer = bufnr }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
          vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
          vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
          vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
          vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, bufopts)
          vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
          vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
          vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
          vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format({ async = true })
          end, bufopts)
        end

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

        require('mason').setup({
          ui = {
            check_outdated_packages_on_open = true,
            border = vim.g.border_style,
          },
        })

        require('mason-lspconfig').setup({
          automatic_installation = true,
          ensure_installed = { 'eslint', 'volar', 'astro', 'tailwindcss', 'stylua' },
        })

        require('lspconfig').eslint.setup({
          filetypes = {
            'typescript',
            'javascript',
            'javascriptreact',
            'typescriptreact',
            'vue',
            'astro',
          },
        })

        require('lspconfig').astro.setup({
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

        require('lspconfig').tailwindcss.setup({
          on_attach = on_attach,
          capabilities = capabilities,
          filetypes = {
            'astro',
            'astro-markdown',
            'html',
            'css',
            'less',
            'postcss',
            'sass',
            'scss',
            'stylus',
            'javascript',
            'javascriptreact',
            'typescript',
            'typescriptreact',
            'vue',
          },
        })

        vim.diagnostic.config({
          virtual_text = false, -- disable virtual text
          update_in_insert = true,
          underline = true,
          float = {
            style = 'minimal',
            border = vim.g.border_style,
            source = 'always',
            header = '',
            prefix = '',
          },
        })

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
