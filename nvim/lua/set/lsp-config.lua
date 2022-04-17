return {
  setup = function(use)
    use({
      "neovim/nvim-lspconfig",
      requires = "hrsh7th/cmp-nvim-lsp",
      config = function()
        -- Diagnostic keymaps
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
        vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

        local nvim_lsp = require("lspconfig")
        local on_attach = function(client, bufnr)
          local opts = { buffer = bufnr }

          -- stop Neovim from asking me which server I want to use for formatting
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false

          --border
          vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.my_border })
          vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.my_border })

          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

          -- See `:help vim.lsp.*` for documentation on any of the below functions
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          -- vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
          -- vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
          -- vim.keymap.set("n", "<leader>wl", function()
          --   vim.inspect(vim.lsp.buf.list_workspace_folders())
          -- end, opts)
          vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          -- vim.api.nvim_create_user_command("Format", vim.lsp.buf.formatting, {})
        end

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

        -- Enable the following language servers
        -- local servers = { 'volar', 'tailwindcss', 'tsserver' }
        local servers = { "volar", "tsserver" }

        for _, lsp in pairs(servers) do
          require("lspconfig")[lsp].setup({
            on_attach = on_attach,
            capabilities = capabilities,
          })
        end

        vim.diagnostic.config({
          virtual_text = { source = "always", prefix = "" },
          signs = true,
          underline = true,
          update_in_insert = true,
          severity_sort = false,
        })

        for type, icon in pairs(vim.g.my_icons.signs) do
          local hl = "DiagnosticSign" .. type
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
      end,
    })
  end,
}
