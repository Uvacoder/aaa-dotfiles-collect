local colorschemes = {
  "tokyo-dark", -- 1
  "doom-one", -- 2
  "gruvbox-flat", -- 3
  "one-dark", -- 4
  "rose-pine", -- 5
  "night-fox", -- 6
}

vim.g.my_theme = "themes/" .. colorschemes[5]

require("my/colors")
require("core/disable")
require("core/options")
require("core/autoload")
require("core/plugins")
require("core/mappings")
require("core/autocmd")
