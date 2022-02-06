return {
  setup = function(use)
    use({
      "hrsh7th/nvim-cmp", -- Autocompletion plugin

      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
        "onsails/lspkind-nvim",
      },

      config = function()
        -- Set completeopt to have a better completion experience
        vim.o.completeopt = "menuone,noselect"

        local lspkind = require("lspkind")

        -- luasnip setup
        local cmp = require("cmp")
        -- Global setup.
        cmp.setup({
          snippet = {
            expand = function(args)
              vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
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
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              else
                fallback()
              end
            end,
            ["<S-Tab>"] = function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end,
          },

          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "vsnip" }, -- For vsnip users.
          }, {
            { name = "buffer" },
          }),

          formatting = {
            format = lspkind.cmp_format({
              mode = "symbol_text",
              -- preset = "codicons",
            }),
          },
        })
        -- `/` cmdline setup.
        cmp.setup.cmdline("/", {
          sources = {
            { name = "buffer" },
          },
        })
        -- `:` cmdline setup.
        cmp.setup.cmdline(":", {
          sources = cmp.config.sources({
            { name = "path" },
          }, {
            { name = "cmdline" },
          }),
        })
      end,
    })
  end,
}
