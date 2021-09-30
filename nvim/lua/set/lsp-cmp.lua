return {
  setup = function(use)
    use {
      "hrsh7th/nvim-cmp",

      requires = {
        "hrsh7th/vim-vsnip",
        "hrsh7th/vim-vsnip-integ",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-nvim-lsp"
      },

      config = function()
        vim.g.vsnip_snippet_dir = os.getenv("HOME") .. "/.config/nvim/snippets"
        vim.g.vsnip_extra_mapping = true

        local t = function(str)
          return vim.api.nvim_replace_termcodes(str, true, true, true)
        end

        local check_back_space = function()
            local col = vim.fn.col('.') - 1
            return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
        end

        local cmp = require("cmp")
        cmp.setup({
          snippet = {
            expand = function(args)
              vim.fn["vsnip#anonymous"](args.body)
            end,
          },

          mapping = {
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-e>'] = cmp.mapping.close(),
            ['<CR>'] = cmp.mapping.confirm({
              behavior = cmp.ConfirmBehavior.Insert,
              select = true,
            }),
            -- ['<Tab>'] = cmp.mapping(function(fallback)
            --   if vim.fn.pumvisible() == 1 then
            --     vim.fn.feedkeys(t('<C-n>'), 'n')
            --   elseif vim.fn['vsnip#available']() == 1 then
            --     vim.fn.feedkeys(t('<Plug>(vsnip-expand-or-jump)'))
            --   elseif check_back_space() then
            --     vim.fn.feedkeys(t('<Tab>'), 'n')
            --   else
            --     fallback()
            --   end
            -- end,
            -- { 'i', 's' }),
            -- ['<S-Tab>'] = cmp.mapping(function(fallback)
            --   if vim.fn.pumvisible() == 1 then
            --     vim.fn.feedkeys(t('<C-p>'), 'n')
            --   elseif vim.fn['vsnip#available']() == 1 then
            --     vim.fn.feedkeys(t('<Plug>(vsnip-jump-prev)'))
            --   else
            --     fallback()
            --   end
            -- end,
            -- { 'i', 's' }),
          },

          sources = {
            { name = "path" },
            { name = "buffer" },
            { name = "vsnip" },
            { name = "nvim_lsp" },
          },
        })
      end
    }
  end
}
