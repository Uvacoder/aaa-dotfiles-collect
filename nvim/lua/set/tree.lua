return {
  setup = function(use)
    use({
      "kyazdani42/nvim-tree.lua",

      requires = "kyazdani42/nvim-web-devicons",

      config = function()
        vim.g.nvim_tree_special_files = {}
        vim.g.nvim_tree_show_icons = { git = 1, folders = 1, files = 1, folder_arrows = 0 }
        vim.g.nvim_tree_icons = {
          default = " ",
          symlink = " ",
          git = { unstaged = "", staged = "", unmerged = "", renamed = "", untracked = "", deleted = "", ignored = "◌" },
        }

        require("nvim-tree").setup({
          disable_netrw = true,
          hijack_netrw = true,
          open_on_setup = false,
          ignore_buffer_on_setup = false,
          ignore_ft_on_setup = {},
          auto_close = true,
          auto_reload_on_write = true,
          open_on_tab = false,
          hijack_cursor = false,
          update_cwd = false,
          hijack_unnamed_buffer_when_opening = false,
          hijack_directories = {
            enable = true,
            auto_open = true,
          },
          diagnostics = {
            enable = false,
            icons = { hint = "", info = "", warning = "", error = "" },
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
            custom = { "packer_compiled.lua", "store-flag.d.ts", "quasar.d.ts", "dist", "plugin", "netlify.toml", "jsconfig.json", "package-lock.json", "node_modules", "babel.config.js" },
          },
          git = {
            enable = true,
            ignore = true,
            timeout = 300,
          },
          view = {
            -- width = 40,
            -- height = 30,
            hide_root_folder = false,
            side = "left",
            preserve_window_proportins = false,
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
          actions = {
            change_dir = {
              enable = true,
              global = false,
            },
            open_file = {
              quit_on_open = true,
              resize_window = false,
              window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                  filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                  buftype = { "nofile", "terminal", "help" },
                },
              },
            },
          },
        })

        vim.keymap.set("n", ",", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
      end,
    })
  end,
}
