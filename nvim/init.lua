vim.g.my_colors = {
  bg = "#000000", 
  bg_alt = "#090B10",
  bg_select = "#23272E",
  fg = "#6272A4",
  blue = "#0087FF",
  green = "#00FF5F",
  yellow = "#FBFF00",
  orange = "#FC7039",
  red = "#ff0000",
  white = "#ffffff",
  purple = "#A400FF",
}

local colorschemes = {
  "tokyo-dark", -- 1
  "doom-one", -- 2
  "gruvbox-flat", -- 3
  "one-dark", -- 4
  "rose-pine", -- 5
  "night-fox", -- 6
}

vim.g.my_theme = "themes/" .. colorschemes[5]

require("core/disable")
require("core/options")

local use = require("packer").use
require("packer").startup({
  function(use)
    -- Packages
    require("set/packer").setup(use)
    require("set/battery").setup(use)
    require("set/modes").setup(use)
    require("set/colorizer").setup(use)
    require("set/ctrlsf").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/tree").setup(use)
    require("set/toggle-term").setup(use)
    require("set/git-signs").setup(use)
    require("set/formatter").setup(use)
    require("set/trouble").setup(use)
    require("set/buffer-line").setup(use)
    require("set/lua-line").setup(use)
    require("set/telescope").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/refactoring").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-config").setup(use)
    require(vim.g.my_theme).setup(use)
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
  },
})

require("core/autoload")
require("core/mappings")
require("core/autocmd")
