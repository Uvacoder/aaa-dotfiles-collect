return {
  setup = function(use)
    use({
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      config = function()
       require("nvim-tree").setup({ -- BEGIN_DEFAULT_OPTS
          view = {
            width = 40,
          },
          renderer = {
            group_empty = false,
            highlight_git = false,
            full_name = false,
            highlight_opened_files = "none",
            icons = {
              webdev_colors = true,
              git_placement = "signcolumn",
              padding = " ",
              symlink_arrow = " ➛ ",
              show = {
                file = true,
                folder = false,
                folder_arrow = true,
                git = true,
              },
              glyphs = {
                default = "",
                symlink = "",
                bookmark = "",
                folder = {
                  arrow_closed = "",
                  arrow_open = "",
                  default = "",
                  open = "",
                  empty = "",
                  empty_open = "",
                  symlink = "",
                  symlink_open = "",
                },
                git = {
                  unstaged = "",
                  staged = "",
                  unmerged = "",
                  renamed = "R",
                  untracked = "U",
                  deleted = "D",
                  ignored = "I",
                },
              },
            },
            special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md" },
            symlink_destination = true,
          },
          ignore_ft_on_setup = {},
          diagnostics = {
            enable = false,
            show_on_dirs = false,
            debounce_delay = 50,
            icons = {
              hint = "",
              info = "ﲉ",
              warning = "",
              error = "",
            },
          },
          filters = {
            dotfiles = true,
            custom = {},
            exclude = {'gitiginore'},
          },
          filesystem_watchers = {
            enable = true,
            debounce_delay = 50,
          },
          git = {
            enable = true,
            ignore = true,
            show_on_dirs = true,
            timeout = 400,
          },
          actions = {
            open_file = {
              quit_on_open = true,
            },
          },
          trash = {
            cmd = "gio trash",
            require_confirm = true,
          },
          live_filter = {
            prefix = "[FILTRO]: ",
            always_show_folders = true,
          },
        }) -- END_DEFAULT_OPTS

        local map = require("utils").map

        map("n", ",", "<CMD>NvimTreeToggle<CR>")
      end,
    })
  end,
}
