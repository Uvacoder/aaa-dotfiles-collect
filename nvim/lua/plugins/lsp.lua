-- https://github.com/VonHeikemen/lsp-zero.nvim
return {
  setup = function(use)
    use({
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-cmdline',
        -- Snippets
        'L3MON4D3/LuaSnip',
        'rafamadriz/friendly-snippets',
        -- pictograms
        'onsails/lspkind.nvim',
      },
      config = function()
        require('mason.settings').set({ ui = { border = 'rounded' } })
        local lsp = require('lsp-zero')
        lsp.preset('recommended')
        lsp.set_preferences({
          suggest_lsp_servers = false,
          -- sign_icons = { error = '', warn = '', hint = '', info = '' },
          sign_icons = { error = '▶', warn = '▶', hint = '▶', info = '▶' },
        })
        lsp.ensure_installed({ 'eslint', 'astro', 'volar' })
        -- local handlers = {
        --   ['client/registerCapability'] = function(_, _, _, _)
        --     return { result = nil, error = nil } 
        --   end,
        -- }
        -- lsp.configure("eslint", { handlers = handlers })

        lsp.setup()

        vim.diagnostic.config({ update_in_insert = true })

        local kind_icons = {
          Text = "",
          Method = "",
          Function = "",
          Constructor = "",
          Field = "",
          Variable = "",
          Class = "",
          Interface = "",
          Module = "",
          Property = "",
          Unit = "",
          Value = "",
          Enum = "",
          Keyword = "",
          Snippet = "",
          Color = "",
          File = "",
          Reference = "",
          Folder = "",
          EnumMember = "",
          Constant = "",
          Struct = "",
          Event = "",
          Operator = "",
          TypeParameter = "",
        }
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local cmp_config = lsp.defaults.cmp_config({
          window = {
            documentation = { border = vim.g.border_style },
            completion = { border = vim.g.border_style },
          },
          mapping = {
            ['<CR>'] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true}),
            ["<Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then cmp.select_next_item()
              elseif luasnip.expand_or_jumpable() then luasnip.expand_or_jump()
              elseif has_words_before() then cmp.complete()
              else fallback() end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
              if cmp.visible() then cmp.select_prev_item()
              elseif luasnip.jumpable(-1) then luasnip.jump(-1)
              else fallback() end
            end, { "i", "s" }),
          },
          sources = {
            { name = 'nvim_lsp' },
            { name = 'nvim_lua' },
            { name = 'luasnip' },
            { name = 'buffer' },
            { name = 'path' },
          },
          experimental = { ghost_text = true },
          formatting = {
            fields = { 'kind', 'abbr', 'menu' },
            format = function(entry, vim_item)
              vim_item.kind = kind_icons[vim_item.kind]
              vim_item.menu = ({
                nvim_lsp = "",
                nvim_lua = "",
                luasnip = "",
                buffer = "",
                path = "",
                emoji = "",
              })[entry.source.name]
            return vim_item
            end,
          },
        })
        cmp.setup.cmdline({ '/', '?' }, {
          mapping = cmp.mapping.preset.cmdline(),
          sources = {
            { name = 'buffer' }
          }
        })
        cmp.setup.cmdline(':', {
          mapping = cmp.mapping.preset.cmdline(),
          sources = cmp.config.sources({{ name = 'path' }}, {{ name = 'cmdline' }}),
        })
        cmp.setup(cmp_config)
      end,
    })
  end,
}
