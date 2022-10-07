local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({ -- BEGIN_DEFAULT_OPTS
  view = {
    width = 40,
  },
  renderer = {
    group_empty = false,
    highlight_git = false,
    full_name = false,
    highlight_opened_files = 'none',
    icons = {
      webdev_colors = true,
      git_placement = 'signcolumn',
      padding = ' ',
      symlink_arrow = ' ➛ ',
      show = {
        file = true,
        folder = false,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        folder = {
          arrow_closed = '',
          arrow_open = '',
        },
        git = {
          unstaged = '',
          staged = '',
          unmerged = '',
          renamed = 'R',
          untracked = 'U',
          deleted = 'D',
          ignored = 'I',
        },
      },
    },
    special_files = { 'Cargo.toml', 'Makefile', 'README.md', 'readme.md' },
    symlink_destination = true,
  },
  ignore_ft_on_setup = {},
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = '',
      info = 'ﲉ',
      warning = '',
      error = '',
    },
  },
  filters = {
    dotfiles = true,
    custom = {},
    exclude = { 'gitiginore' },
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
    cmd = 'gio trash',
    require_confirm = true,
  },
  live_filter = {
    prefix = '[FILTRO]: ',
    always_show_folders = true,
  },
})