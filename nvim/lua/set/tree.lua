return {
  setup = function(use)
    use({
      "kyazdani42/nvim-tree.lua",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        vim.g.nvim_tree_indent_markers = 1
        vim.g.nvim_tree_special_files = {}
        vim.g.nvim_tree_show_icons = { git = 1, folders = 1, files = 0, folder_arrows = 0 }
        vim.g.nvim_tree_icons = {
          default = " ",
          symlink = " ",
          folder = { default = "", open = "" },
          git = { unstaged = "", staged = "", unmerged = "", renamed = "", untracked = "", deleted = "", ignored = "◌" },
        }
        require("nvim-tree").setup({
          view = {
            width = 40,
            hide_root_folder = false,
          },
          filters = {
            dotfiles = true,
            custom = { "packer_compiled.lua", "store-flag.d.ts", "quasar.d.ts", "dist", "plugin", "netlify.toml", "jsconfig.json", "package-lock.json", "node_modules", "babel.config.js" },
          },
          trash = {
            require_confirm = true,
          },
          actions = {
            open_file = {
              quit_on_open = true,
            },
          },
        })

        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", ",", ":NvimTreeToggle<CR>", opts)
      end,
    })
  end,
}
