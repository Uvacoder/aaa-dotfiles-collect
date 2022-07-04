-- Unless you are still migrating, remove the deprecated commands from v1.x
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  setup = function(use)
    use({
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
        "nvim-lua/plenary.nvim",
        "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
      },

      config = function()
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

        local map = require("mnml.utils").map

        require("neo-tree").setup({
          close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
          popup_border_style = vim.g.my.border,
          enable_git_status = true,
          enable_diagnostics = false,
          default_component_configs = {
            icon = {
              folder_closed = "",
              folder_open = "",
              folder_empty = "ﰊ",
              default = "",
            },
            modified = {
              symbol = "",
              highlight = "NeoTreeModified",
            },
            git_status = {
              symbols = {
                -- Change type
                added = "A", -- "✚",
                modified = "M", -- "",
                deleted = "D", -- "✖",
                renamed = "R", -- "",
                -- Status type
                untracked = "U",
                ignored = "I",
                unstaged = "",
                staged = "",
                conflict = "C",
              },
            },
          },
          window = {
            position = "float",
            popup = { -- settings that apply to float position only
              size = {
                height = "80%",
                width = "40%",
              },
              position = "50%", -- 50% means center it
            },
          },
          filesystem = {
            filtered_items = {
              visible = false, -- when true, they will just be displayed differently than normal items
              hide_dotfiles = true,
              hide_gitignored = true,
              hide_by_name = {
                "store-flag.d.ts",
                "quasar.d.ts",
                "dist",
                "package-lock.json",
                "node_modules",
                "plugin",
                "packer_compiled.lua",
              },
              never_show = { -- remains hidden even if visible is toggled to true
                ".DS_Store",
                "thumbs.db",
              },
            },
          },
        })

        map("n", ",", "<CMD>Neotree toggle<CR>")
        map("n", "[", "<CMD>Neotree float git_status<CR>")
        map("n", "]", "<CMD>Neotree buffers<CR>")
        map("n", "<C-q>", "<CMD>Neotree close<CR>")
      end,
    })
  end,
}
