return {
  setup = function(use)
    use({
      "kyazdani42/nvim-tree.lua",

      requires = "kyazdani42/nvim-web-devicons",

      config = function()
        vim.g.nvim_tree_quit_on_open = 1
        vim.g.nvim_tree_indent_markers = 1
        vim.g.nvim_tree_git_hl = 0
        vim.g.nvim_tree_highlight_opened_files = 3
        vim.g.nvim_tree_refresh_wait = 500
        vim.g.nvim_tree_window_picker_exclude = {
          ["filetype"] = { "packer", "qf" },
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
          folder = {
            arrow_open = "",
            arrow_closed = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
        }

        require("nvim-tree").setup({
          update_focused_file = {
            enable = true,
          },
          filters = {
            dotfiles = true,
            custom = {
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
          view = {
            width = "30%",
            auto_resize = true,
          },
        })

        vim.api.nvim_set_keymap("n", ",", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
