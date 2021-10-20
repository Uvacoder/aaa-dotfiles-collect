require("core/disable")
require("core/autoload")

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
    -- require("set/colorizer").setup(use)
    -- require("set/telescope").setup(use)
    -- require("set/indent-guides").setup(use)
    require("set/lualine").setup(use)
    require("set/barbar").setup(use)
    require("set/toggle-term").setup(use)
    -- themes
    require("themes/rose-pine").setup(use)
    -- possible values: onedark, nord, tokyo-dark, rose-pine, gruv-queen, github
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
  },
})
require("core/options")
require("core/mappings")
require("core/autocmd")
