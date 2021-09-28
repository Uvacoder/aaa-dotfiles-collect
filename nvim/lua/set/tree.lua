return {
  setup = function(use)
    use {
      'kyazdani42/nvim-tree.lua',

      requires = 'kyazdani42/nvim-web-devicons',

      config = function()
        require'nvim-tree'.setup {
          view = {width = 40}
        }
        vim.g.nvim_tree_quit_on_open = 1
        vim.g.nvim_tree_hide_dotfiles = 1
        vim.g.nvim_tree_indent_markers = 1
        vim.g.nvim_tree_git_hl = 0
        vim.g.nvim_tree_highlight_opened_files = 1
        vim.g.nvim_tree_ignore = { 
          "dist", "plugin", "netlify.toml", "jsconfig.json", "package-lock.json", 
          ".git", ".nuxt", "node_modules", ".cache", "~*.*", ".DS_Store"
        }
        vim.g.nvim_tree_show_icons = {
          git = 1,
          folders = 0,
          files = 1,
          folder_arrows = 1
        }
        vim.api.nvim_set_keymap('n', ',', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
      end
    }
  end
}
