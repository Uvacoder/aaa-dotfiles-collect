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
          event_handlers = {
            {
              event = "file_opened",
              handler = function(file_path)
                require("neo-tree").close_all() -- auto close
                -- require("neo-tree.sources.filesystem").reset_search(state) -- clear filters
              end,
            },
          },
          close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
          popup_border_style = "rounded",
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
              symbol = vim.g.my_icons.modified,
              highlight = "NeoTreeModified",
            },
            name = {
              trailing_slash = false,
              use_git_status_colors = true,
            },
            git_status = {
              symbols = {
                -- Change type
                added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
                modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
                deleted = "✖", -- this can only be used in the git_status source
                renamed = "", -- this can only be used in the git_status source
              },
            },
          },
          window = {
            position = "left",
            width = 40,
            mappings = {
              ["<cr>"] = "open",
              ["S"] = "open_split",
              ["s"] = "open_vsplit",
              ["t"] = "open_tabnew",
              ["C"] = "close_node",
              ["a"] = "add",
              ["A"] = "add_directory",
              ["d"] = "delete",
              ["r"] = "rename",
              ["y"] = "copy_to_clipboard",
              ["x"] = "cut_to_clipboard",
              ["p"] = "paste_from_clipboard",
              ["c"] = "copy", -- takes text input for destination
              ["m"] = "move", -- takes text input for destination
              ["q"] = "close_window",
              ["R"] = "refresh",
            },
          },
          nesting_rules = {},
          filesystem = {
            filtered_items = {
              visible = false, -- when true, they will just be displayed differently than normal items
              hide_dotfiles = true,
              hide_gitignored = true,
              hide_by_name = {
                "store-flag.d.ts",
                "quasar.d.ts",
                "dist",
                "netlify.toml",
                "jsconfig.json",
                "package-lock.json",
                "node_modules",
                "babel.config.js",
              },
              never_show = { -- remains hidden even if visible is toggled to true
                ".DS_Store",
                "thumbs.db",
                "plugin",
                "packer_compiled.lua",
              },
            },
            follow_current_file = true, -- This will find and focus the file in the active buffer every
            hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
            use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
            window = {
              mappings = {
                ["<bs>"] = "navigate_up",
                ["."] = "set_root",
                ["H"] = "toggle_hidden",
                ["/"] = "fuzzy_finder",
                ["f"] = "filter_on_submit",
                ["<c-x>"] = "clear_filter",
              },
            },
          },
          buffers = {
            show_unloaded = true,
            window = {
              mappings = {
                ["bd"] = "buffer_delete",
                ["<bs>"] = "navigate_up",
                ["."] = "set_root",
              },
            },
          },
          git_status = {
            window = {
              position = "float",
              mappings = {
                ["A"] = "git_add_all",
                ["gu"] = "git_unstage_file",
                ["ga"] = "git_add_file",
                ["gr"] = "git_revert_file",
                ["gc"] = "git_commit",
                ["gp"] = "git_push",
                ["gg"] = "git_commit_and_push",
              },
            },
          },
        })

        vim.cmd([[nnoremap , :Neotree toggle<cr>]])
        vim.cmd([[nnoremap . :Neotree buffers<cr>]])
      end,
    })
  end,
}
