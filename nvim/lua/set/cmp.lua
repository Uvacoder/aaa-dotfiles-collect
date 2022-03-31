return {
  setup = function(use)
    use({
      "hrsh7th/nvim-cmp", -- Autocompletion plugin
      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip", -- Snippets plugin
        "onsails/lspkind-nvim",
      },
      config = function()
        local lspkind = require("lspkind")

        -- luasnip setup
        local has_words_before = function()
          local line, col = unpack(vim.api.nvim_win_get_cursor(0))
          return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

        require("luasnip.loaders.from_snipmate").load({ paths = { "./lua/snippets" } })

        local luasnip = require("luasnip")
        local cmp = require("cmp")

        -- Global setup.
        cmp.setup({
          snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            end,
          },
          mapping = {
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-n>"] = cmp.mapping.select_next_item(),
            ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
            ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
            ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
            ["<C-e>"] = cmp.mapping.close(),
            ["<CR>"] = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Replace,
              select = true,
            }),
            ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
              elseif has_words_before() then
                cmp.complete()
              else
                fallback()
              end
            end, { "i", "s" }),

            ["<S-Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
              else
                fallback()
              end
            end, { "i", "s" }),
          },
          documentation = { border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" } },
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" }, -- For luasnip users.
          }, {
            { name = "buffer" },
          }),

          formatting = {
            format = lspkind.cmp_format({
              with_text = true,
              maxwidth = 50,
              before = function(entry, vim_item)
                return vim_item
              end,
            }),
          },
        })
        -- `/` cmdline setup.
        cmp.setup.cmdline("/", { sources = { { name = "buffer" } } })
        -- `:` cmdline setup.
        cmp.setup.cmdline(":", {
          sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
        })
      end,
    })
  end,
}
