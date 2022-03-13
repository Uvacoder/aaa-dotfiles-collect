return {
  setup = function(use)
    use({
      "neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client

      requires = {
        "williamboman/nvim-lsp-installer", -- Install language servers
        "hrsh7th/cmp-nvim-lsp",
      },

      config = function()
        local opts = { noremap = true, silent = true }

        -- Diagnostic keymaps
        -- vim.keymap.set("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
        -- vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
        -- vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
        -- vim.keymap.set("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

        local nvim_lsp = require("lspconfig")

        nvim_lsp.volar.setup({
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
        })

        local on_attach = function(client, bufnr)
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set("n", "<leader>wl", function()
            vim.inspect(vim.lsp.buf.list_workspace_folders())
          end, opts)
          vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          -- vim.keymap.set("n", "<leader>so", require("telescope.builtin").lsp_document_symbols, opts)
          vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])

          if client.resolved_capabilities.document_formatting then
            vim.keymap.set("n", "f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
            vim.cmd("command! Format execute 'lua vim.lsp.buf.formatting()'")
            vim.cmd("autocmd BufWritePost *.vue,*.js lua vim.lsp.buf.formatting()")

            -- vim.cmd([[
            --   augroup lsp_format
            --     autocmd! * <buffer>
            --     autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting_sync(nil, 2000)
            --   augroup END
            -- ]])
          elseif client.resolved_capabilities.document_range_formatting then
            vim.keymap.set("n", "<space>rf", ":lua vim.lsp.buf.range_formatting_sync()<CR>", opts)
          end
        end

        local lsp_installer_servers = require("nvim-lsp-installer.servers")

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

        -- Enable the following language servers
        -- local servers = { 'volar', 'tailwindcss', 'tsserver' }
        -- local servers = { 'vuels', 'tailwindcss', 'tsserver' }
        -- local servers = { "vuels", "tsserver" }
        local servers = { "volar" }

        for _, server_name in ipairs(servers) do
          local server_available, server = lsp_installer_servers.get_server(server_name)
          if server_available then
            server:on_ready(function()
              local opts = {
                on_attach = on_attach,
                capabilities = capabilities,
                flags = { debounce_text_changes = 150 },
              }
              server:setup(opts)
            end)
            if not server:is_installed() then
              -- Queue the server to be installed.
              print("Installing " .. server_name)
              server:install()
            end
          end
        end

        vim.diagnostic.config({
          virtual_text = {
            source = "always", -- Or "if_many"
            prefix = "●", -- Could be '●', '▎', 'x'
          },
          signs = true,
          underline = true,
          update_in_insert = true,
          severity_sort = false,
          float = {
            focusable = false,
            style = "minimal",
            border = "rounded",
            source = "always",
            header = "",
            prefix = "",
          },
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
