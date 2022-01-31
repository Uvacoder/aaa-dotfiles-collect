return {
  setup = function(use)
    use({
      "kyazdani42/nvim-tree.lua",

      requires = "kyazdani42/nvim-web-devicons",

      config = function()
        vim.g.nvim_tree_quit_on_open = 1
        vim.g.nvim_tree_indent_markers = 1
        vim.g.nvim_tree_git_hl = 0
        vim.g.nvim_tree_refresh_wait = 300
        vim.g.nvim_tree_window_picker_exclude = {
          ["filetype"] = { "notify", "packer", "qf" },
          ["buftype"] = { "terminal" },
        }
        vim.g.nvim_tree_show_icons = {
          git = 1,
          folders = 1,
          files = 1,
          folder_arrows = 0,
        }
        vim.g.nvim_tree_icons = {
          default = " ",
          symlink = " ",
          git = {
            unstaged = "",
            staged = "",
            unmerged = "",
            renamed = "",
            untracked = "",
            deleted = "",
            ignored = "◌",
          },
        }

        require("nvim-tree").setup({
          disable_netrw = true,
          hijack_netrw = true,
          open_on_setup = false,
          ignore_ft_on_setup = {},
          auto_close = true,
          open_on_tab = false,
          hijack_cursor = false,
          update_cwd = false,
          update_to_buf_dir = {
            enable = true,
            auto_open = true,
          },
          diagnostics = {
            enable = false,
          },
          update_focused_file = {
            enable = true,
            update_cwd = false,
            ignore_list = {},
          },
          system_open = {
            cmd = nil,
            args = {},
          },
          filters = {
            dotfiles = true,
            custom = {
              "packer_compiled.lua",
              "store-flag.d.ts",
              "quasar.d.ts",
              "dist",
              "plugin",
              "netlify.toml",
              "jsconfig.json",
              "package-lock.json",
              "node_modules",
              "babel.config.js",
            },
          },
          git = {
            enable = true,
            ignore = true,
            timeout = 500,
          },
          view = {
            width = 40,
            hide_root_folder = true,
            side = "left",
            auto_resize = false,
            mappings = {
              custom_only = false,
              list = {},
            },
            number = false,
            relativenumber = false,
            signcolumn = "yes",
          },
          trash = {
            cmd = "trash",
            require_confirm = true,
          },
        })

        vim.keymap.set("n", ",", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
