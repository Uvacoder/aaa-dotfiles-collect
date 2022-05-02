return {
  setup = function(use)
  use({
      "neovim/nvim-lspconfig",
      requires = { "hrsh7th/cmp-nvim-lsp" },
      -- requires = { "hrsh7th/cmp-nvim-lsp", "williamboman/nvim-lsp-installer" },
      config = function()
        -- Diagnostic keymaps
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
        vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

        local on_attach = function(client, bufnr)
          -- disable formatting for LSP clients as this is handled by null-ls
          -- client.server_capabilities.document_formatting = false
          -- client.server_capabilities.document_range_formatting = false

          local opts = { buffer = bufnr }

          --border
          vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.my.border })
          vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.my.border })

          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

          -- See `:help vim.lsp.*` for documentation on any of the below functions
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

          -- vim.cmd([[command! Format execute 'lua vim.lsp.buf.format({ async = true })']])

          -- client.supports_method("textDocument/formatting") = false

          -- if client.supports_method("textDocument/formatting") then
          -- vim.api.nvim_buf_set_keymap(bufnr, "n", "f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
          -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
          -- end
        end

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

        -- Enable the following language servers
        -- local servers = { 'volar', 'tailwindcss', 'tsserver' }
        local servers = { "volar", "tsserver" }
        -- sudo npm install -g @volar/vue-language-server typescript typescript-language-server

        -- Ensure servers are installed
        -- require("nvim-lsp-installer").setup({
        --   ensure_installed = servers,
        -- })
        --
        for _, server in pairs(servers) do
          local opts = {
            on_attach = on_attach,
            capabilities = capabilities,
          }
          local has_custom_opts, server_custom_opts = pcall(require, "set.server." .. server)
          if has_custom_opts then
            opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
          end
          require("lspconfig")[server].setup(opts)
        end
      end,
    })
  end,
}
