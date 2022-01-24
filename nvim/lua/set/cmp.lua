return {
  setup = function(use)
    use({
      "hrsh7th/nvim-cmp", -- Autocompletion plugin

      requires = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-calc",
        "octaltree/cmp-look",
        "L3MON4D3/LuaSnip", -- Snippets plugin
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind-nvim",
      },

      config = function()
        -- Set completeopt to have a better completion experience
        vim.o.completeopt = "menuone,noselect"

        local lspkind = require("lspkind")

        -- luasnip setup
        local has_words_before = function()
          local line, col = unpack(vim.api.nvim_win_get_cursor(0))
          return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
        end

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
          sources = {
            { name = "nvim_lua" },
            { name = "nvim_lsp" },
            { name = "path" },
            { name = "luasnip" },
            { name = "buffer" },
            {
              name = "look",
              -- keyword_length = 2,
              option = { convert_case = true, loud = true },
            },
            { name = "calc" },
          },

          snippet = {
            expand = function(args)
              luasnip.lsp_expand(args.body)
            end,
          },

          formatting = {
            format = lspkind.cmp_format({
              with_text = false,
              menu = {
                buffer = "[buf]",
                look = "[look]",
                luasnip = "[snip]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[lua]",
                path = "[path]",
                calc = "[calc]",
              },
            }),
          },

          experimental = { native_menu = false, ghost_text = true },
        })

        cmp.setup.cmdline("/", {
          sources = cmp.config.sources({ { name = "buffer", keyword_length = 1 } }),
        })

        cmp.setup.cmdline(":", {
          sources = cmp.config.sources({
            { name = "path" },
            { name = "cmdline", max_item_count = 20, keyword_length = 1 },
          }),
        })
      end,
    })
  end,
}
