return {
  setup = function(use)
    use({
      "neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client

      requires = {
        "williamboman/nvim-lsp-installer", -- Install language servers
        "hrsh7th/nvim-cmp", -- Autocompletion plugin
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip", -- Snippets plugin
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
      },

      config = function()
        local nvim_lsp = require("lspconfig")
        local on_attach = function(_, bufnr)
          vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

          local opts = { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
          vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>wr",
            "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>",
            opts
          )
          vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>wl",
            "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
            opts
          )
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
          -- vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
          vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>e",
            "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",
            opts
          )
          vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
          vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
          vim.api.nvim_buf_set_keymap(
            bufnr,
            "n",
            "<leader>so",
            [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]],
            opts
          )
          vim.cmd([[ command! Format execute 'lua vim.lsp.buf.formatting()' ]])
        end

        -- nvim-cmp supports additional completion capabilities
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

        -- Enable the following language servers
        -- local servers = { 'volar', 'tailwindcss', 'tsserver' }
        local servers = { "volar", "tsserver" }
        for _, lsp in ipairs(servers) do
          nvim_lsp[lsp].setup({
            on_attach = on_attach,
            capabilities = capabilities,
          })
        end

        -- Set completeopt to have a better completion experience
        vim.o.completeopt = "menuone,noselect"

        -- luasnip setup
        local luasnip = require("luasnip")

        -- nvim-cmp setup
        local cmp = require("cmp")
        cmp.setup({
          snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          },
          mapping = {
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ["<C-d>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.close(),
            ["<CR>"] = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
            }),
            ["<Tab>"] = function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              else
                fallback()
              end
            end,
            ["<S-Tab>"] = function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              else
                fallback()
              end
            end,
          },
          sources = {
            { name = "path" },
            { name = "buffer" },
            { name = "nvim_lsp" },
            { name = "luasnip" },
          },
        })

        local lsp_installer = require("nvim-lsp-installer")

        lsp_installer.on_server_ready(function(server)
          local opts = {}
          server:setup(opts)
          vim.cmd [[ do User LspAttachBuffers ]]
        end)

        -- Highlight on yank
        vim.api.nvim_exec(
          [[
          augroup YankHighlight
          autocmd!
          autocmd TextYankPost * silent! lua vim.highlight.on_yank()
          augroup end
        ]],
          false
        )
      end,
    })
  end,
}
