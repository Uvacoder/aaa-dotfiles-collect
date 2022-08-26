-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  setup = function(use)
    use({
      'nvim-neo-tree/neo-tree.nvim',
      branch = 'v2.x',
      requires = {
        'nvim-lua/plenary.nvim',
        'kyazdani42/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
      },

      config = function()
        -- Unless you are still migrating, remove the deprecated commands from v1.x
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

        -- If you want icons for diagnostic errors, you'll need to define them somewhere:
        vim.fn.sign_define('DiagnosticSignError', { text = ' ', texthl = 'DiagnosticSignError' })
        vim.fn.sign_define('DiagnosticSignWarn', { text = ' ', texthl = 'DiagnosticSignWarn' })
        vim.fn.sign_define('DiagnosticSignInfo', { text = 'ﲉ ', texthl = 'DiagnosticSignInfo' })
        vim.fn.sign_define('DiagnosticSignHint', { text = ' ', texthl = 'DiagnosticSignHint' })

        local map = require('utils').map

        require('neo-tree').setup({
          popup_border_style = vim.g.border_style,
          enable_git_status = true,
          enable_diagnostics = true,
          default_component_configs = {
            icon = {
              folder_closed = '',
              folder_open = '',
              folder_empty = 'ﰊ',
              default = '',
            },
            modified = {
              symbol = '',
              -- highlight = "NeoTreeModified",
            },
            git_status = {
              symbols = {
                -- Change type
                added = 'A', -- "✚",
                modified = 'M', -- "",
                deleted = 'D', -- "✖",
                renamed = 'R', -- "",
                -- Status type
                untracked = 'U',
                ignored = 'I',
                unstaged = '',
                staged = '',
                conflict = 'C',
              },
            },
          },
          event_handlers = {
            {
              event = 'file_opened',
              handler = function(file_path)
                --auto close
                require('neo-tree').close_all()
              end,
            },
          },
          -- window = {
          --   position = "float",
          --   popup = { -- settings that apply to float position only
          --     size = {
          --       height = "75%",
          --       width = "42%",
          --     },
          --     position = {
          --       row = "2",
          --       col = "50%",
          --     },
          --   },
          -- },
          filesystem = {
            filtered_items = {
              visible = false, -- when true, they will just be displayed differently than normal items
              hide_dotfiles = true,
              hide_gitignored = true,
              hide_by_name = {
                'store-flag.d.ts',
                'quasar.d.ts',
                'dist',
                'package-lock.json',
                'node_modules',
                'plugin',
                'packer_compiled.lua',
              },
              always_show = { -- remains visible even if other settings would normally hide it
                '.gitignored',
              },
              never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
                '.DS_Store',
                'thumbs.db',
              },
              follow_current_file = true,
            },
          },
        })

        map('n', ',', '<CMD>Neotree toggle<CR>')
        map('n', '[', '<CMD>Neotree git_status toggle<CR>')
        map('n', ']', '<CMD>Neotree buffers toggle<CR>')
        map('n', '<C-q>', '<CMD>Neotree close<CR>')
      end,
    })
  end,
}
