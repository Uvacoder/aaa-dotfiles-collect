require("disable")
require("options")
require("autoload")

local use = require("packer").use
require("packer").startup({
  function(use)
    -- Packages
    require("set/packer").setup(use)
    require("set/visual-multi").setup(use)
    require("set/autopairs").setup(use)
    require("set/tree").setup(use)
    require("set/gitsigns").setup(use)
    require("set/treesitter").setup(use)
    require("set/lsp").setup(use)
    require("set/format").setup(use)
    require("set/trouble").setup(use)
    require("set/hardline").setup(use)
    -- require("set/colorizer").setup(use)
    -- require("set/telescope").setup(use)
    -- require("set/indent-guides").setup(use)
    -- require("set/lualine").setup(use)
    -- require("set/barbar").setup(use)
    -- themes
    require("themes/onedark").setup(use)
    -- possible values: onedark, nord, tokio-dark, rose-pine, gruv-queen, github
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
  },
})

require("mappings")
require("autocmd")
