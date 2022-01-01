require("core/disable")
require("core/autoload")

local use = require("packer").use
require("packer").startup({
  function(use)
    -- Packages
    require("set/packer").setup(use)
    require("set/ctrlsf").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/tree").setup(use)
    require("set/git-signs").setup(use)
    require("set/formatter").setup(use)
    require("set/trouble").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/lua-line").setup(use)
    require("set/buffer-line").setup(use)
    require("set/telescope").setup(use)
    require("set/lsp-installer").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/lsp-config").setup(use)
    require("set/cmp").setup(use)
    -- themes
    require("themes/one-dark").setup(use) -- material, oceanic-next, one-dark, tokyo-dark, rose-pine

    vim.cmd([[hi link IndentBlanklineChar Comment]])
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
