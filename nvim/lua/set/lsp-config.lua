return {
  setup = function(use)
    use({
      "neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client

      requires = {
        "hrsh7th/cmp-nvim-lsp",
      },

      config = function()
        local nvim_lsp = require("lspconfig")
        local opts = { noremap = true, silent = true }

        -- Diagnostic keymaps
        vim.api.nvim_set_keymap("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        vim.api.nvim_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

        local on_attach = function(client, bufnr)
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
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>rf", ":lua vim.lsp.buf.range_formatting_sync()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-f>", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
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
          virtual_text = true,
          signs = true,
          underline = true,
          update_in_insert = true,
          severity_sort = false,
        })

        local signs = {
          Error = vim.g.my_icons.error,
          Warn = vim.g.my_icons.warning,
          Info = vim.g.my_icons.info,
          Hint = vim.g.my_icons.hint,
        }

        for type, icon in pairs(signs) do
          local hl = "DiagnosticSign" .. type
          vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
        end
      end,
    })
  end,
}
