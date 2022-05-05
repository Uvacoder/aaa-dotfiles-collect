return {
  setup = function(use)
    use({
      "neovim/nvim-lspconfig",
      requires = { "hrsh7th/cmp-nvim-lsp", "williamboman/nvim-lsp-installer" },
      config = function()
        -- Diagnostic keymaps
        local opts = { buffer = bufnr }

        vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        vim.api.nvim_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

        local on_attach = function(client, bufnr)
          -- stop Neovim from asking me which server I want to use for formatting
          -- client.server_capabilities.document_formatting = false
          -- client.server_capabilities.document_range_formatting = false

          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

          -- See `:help vim.lsp.*` for documentation on any of the below functions
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
          -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
        end

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

        -- LSP settings (for overriding per client)
        local handlers = {
          ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.my.border }),
          ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.my.border }),
        }

        -- Enable the following language servers
        -- local servers = { 'volar', 'tailwindcss', 'tsserver' }
        local servers = { "cssls", "html", "eslint", "volar", "tsserver" }

        -- Ensure servers are installed
        require("nvim-lsp-installer").setup({
          ensure_installed = servers,
        })

        for _, server in pairs(servers) do
          local options = {}
          options.on_attach = on_attach
          options.capabilities = capabilities
          options.handlers = handlers

          if server.name == "eslint" then
            options.settings = { format = { enable = false } }
          end
          if server.name == "tsserver" then
            options.settings = { format = { enable = false } }
          end
          if server.name == "volar" then
            options.settings = { format = { enable = false } }
          end

          require("lspconfig")[server].setup(options)
        end

        -- Show line diagnostics automatically for specific cursor position
        vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]])

        vim.diagnostic.config({
          virtual_text = false, --{ source = "always" },
          signs = true,
          underline = true,
          update_in_insert = true,
          severity_sort = false,
          float = {
            focusable = false,
            style = "minimal",
            border = vim.g.my.border,
            source = "always",
            header = "",
            prefix = "",
          },
        })
      end,
    })
  end,
}
