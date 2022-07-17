return {
  setup = function(use)
    use({
      "neovim/nvim-lspconfig",

      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "williamboman/nvim-lsp-installer",
      },

      config = function()
        local buf_map = require("mnml.utils").buf_map
        local map = require("mnml.utils").map

        -- Diagnostic keymaps
        map("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>")
        map("n", "<space>d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
        -- map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
        map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>")

        local on_attach = function(client, bufnr)
          -- stop Neovim from asking me which server I want to use for formatting
          -- client.server_capabilities.document_formatting = false
          -- client.server_capabilities.document_range_formatting = false

          -- Enable completion triggered by <c-x><c-o>
          vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

          -- See `:help vim.lsp.*` for documentation on any of the below functions
          buf_map(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
          buf_map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")

          buf_map(bufnr, "n", "kk", "<cmd>lua vim.lsp.buf.hover()<CR>")
          buf_map(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
          buf_map(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
          -- buf_map(bufnr, "n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
          -- buf_map(bufnr, "n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
          -- buf_map(bufnr, "n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
          buf_map(bufnr, "n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
          buf_map(bufnr, "n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
          buf_map(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
          buf_map(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
          -- buf_map(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>")
        end

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

        -- LSP settings (for overriding per client)
        local handlers = {
          ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.mnml.ui.border }),
          ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, { border = vim.g.mnml.ui.border }),
        }

        -- Ensure servers are installed
        require("nvim-lsp-installer").setup({
          ensure_installed = vim.g.mnml.lsp.servers,
        })

        for _, server in pairs(vim.g.mnml.lsp.servers) do
          local options = {}
          options.on_attach = on_attach
          options.handlers = handlers

          if server.name == "eslint" then
            options.on_attach.resolved_capabilities.document_formatting = true
            options.settings = { format = { enable = true } }
          end

          if server.name == "tsserver" or server.name == "volar" then
            options.on_attach.resolved_capabilities.document_formatting = false
            options.capabilities = capabilities
            options.settings = { format = { enable = false } }
          end

          require("lspconfig")[server].setup(options)
        end

        -- Show line diagnostics automatically for specific cursor position
        -- vim.cmd([[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]])
        local diagnostic = vim.diagnostic
        diagnostic.config({
          -- virtual_text = false,
          -- virtual_lines = { prefix = "" },
          virtual_text = {
            prefix = "",
            spacing = 2,
          },
          signs = false,
          float = {
            border = vim.g.mnml.ui.border,
            header = "",
            prefix = "",
            format = function(diagnostic)
              return string.format(
                " %s %s\n%s",
                diagnostic.source,
                diagnostic.user_data.lsp.code,
                diagnostic.message
              )
              -- return dump(diagnostic)
            end,
          },
        })
      end,
    })
  end,
}
