require("core/disable")
require("core/autoload")

local use = require("packer").use
require("packer").startup({
  function(use)
    -- Packages
    require("set/packer").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/tree").setup(use)
    require("set/git-signs").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/org-mode").setup(use)
    require("set/lsp").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-installer").setup(use)
    require("set/format").setup(use)
    require("set/trouble").setup(use)
    -- require("set/colorizer").setup(use)
    -- require("set/telescope").setup(use)
    require("set/indent-guides").setup(use)
    require("set/lua-line").setup(use)
    require("set/buffer-line").setup(use)
    require("set/toggle-term").setup(use)
    -- themes
    require("themes/onedark").setup(use)
    -- possible values: monokai, tokyo-night, material, onedark, nord, tokyo-dark, rose-pine, gruv-queen, github
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
