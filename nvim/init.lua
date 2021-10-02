require("disable")

require("options")

require("packer-autoload")

local use = require('packer').use
require('packer').startup({ 
  function(use)
    -- Package manager
    use 'wbthomason/packer.nvim' 
    -- themes (possible values: tokio-dark, rose-pine, gruv-queen, github)
    require("themes/tokyo-dark").setup(use)

    use 'editorconfig/editorconfig-vim'
    use 'mg979/vim-visual-multi'

    -- A high-performance color highlighter for Neovim
    require("set/colorizer").setup(use)

    require("set/autopairs").setup(use)
    
    require("set/tree").setup(use)
    -- Add git related info in the signs columns and popups
    require("set/gitsigns").setup(use)
    -- UI to select things (files, grep results, open buffers...)
    require("set/telescope").setup(use)
    -- Highlight, edit, and navigate code using a fast incremental parsing library
    require("set/treesitter").setup(use)
    -- Collection of configurations for built-in LSP client
    -- Autocompletion and Snippets plugin
    require("set/lsp").setup(use)

    require("set/format").setup(use)
    require("set/trouble").setup(use)
    require("set/lualine").setup(use)
    require("set/barbar").setup(use)

  end,
  config = {
    display = {
      open_fn = require('packer.util').float
    }
  }
})

require("mappings")

require("autocmd")
