require "options"

require "packer-autoload"

local use = require('packer').use
require('packer').startup({ 
  function(use)
    -- themes
    require("themes/rose-pine").setup(use)
    -- require("themes/tokyo-dark").setup(use)
    -- require("themes/github").setup(use)

    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use 'editorconfig/editorconfig-vim'
    use 'mg979/vim-visual-multi'

    require("set/hexokinase").setup(use)
    require("set/autopairs").setup(use)
    require("set/tree").setup(use)
    require("set/gitsigns").setup(use)
    require("set/telescope").setup(use)
    require("set/treesitter").setup(use) 
    require("set/lsp-colors").setup(use) 
    require("set/lsp-config").setup(use)
    require("set/lsp-comp").setup(use) 
    require("set/format").setup(use)
    require("set/trouble").setup(use)
    require("set/lualine").setup(use)
    require("set/barbar").setup(use)

  end,
  config = { display = { open_fn = require('packer.util').float }}
})

require "mappings"

require "autocmd"
