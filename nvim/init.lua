require("disable")
require("options")
require("packer-autoload")

local use = require('packer').use
require('packer').startup({
  function(use)
    -- Packages
    use 'wbthomason/packer.nvim'
    use 'editorconfig/editorconfig-vim'
    use 'mg979/vim-visual-multi'

    require("set/autopairs").setup(use)
    require("set/tree").setup(use)
    require("set/gitsigns").setup(use)
    require("set/telescope").setup(use)
    require("set/treesitter").setup(use)
    require("set/lsp").setup(use)
    require("set/format").setup(use)
    require("set/trouble").setup(use)
    require("set/hardline").setup(use)
    require("set/colorizer").setup(use)

    -- themes (possible values: tokio-dark, rose-pine, gruv-queen, github)
    require("themes/nord").setup(use)

  end,
  config = {
    display = {
      open_fn = require('packer.util').float
    }
  }
})

--require("plugins")

require("mappings")
require("autocmd")
