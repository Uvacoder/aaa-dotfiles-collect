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
        -- Unless you are still migrating, remove the deprecated commands from v1.x
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

        require("neo-tree").setup({
          popup_border_style = vim.g.border_style,
          enable_git_status = true,
          enable_diagnostics = false,
          default_component_configs = {
            icon = {
              folder_closed = "",
              folder_open = "",
              folder_empty = "ﰊ",
              default = "",
            },
            modified = { symbol = "" },
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
              size = { height = "17", width = "45" },
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
              always_show = { ".gitignored" },
              never_show = { ".DS_Store", "thumbs.db" },
              follow_current_file = true,
            },
          },
        })

        local keymap = vim.keymap.set
        local opts = { silent = true }
        keymap("n", ",", "<CMD>Neotree toggle<CR>", opts)
        keymap("n", "<C-e>", "<CMD>Neotree toggle<CR>", opts)
        keymap("n", "<C-b>", "<CMD>Neotree buffers toggle<CR>", opts)
        keymap("n", "<C-g>", "<CMD>Neotree git_status toggle<CR>", opts)
        keymap("n", "<C-q>", "<CMD>Neotree close<CR>", opts)
      end,
    })
  end,
}
