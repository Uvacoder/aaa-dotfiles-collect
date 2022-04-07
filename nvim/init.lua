require("core/options")
local themes = {
  "rose-pine",
  "tokyo-night",
  "xcode-colors",
  "doom-one",
  "sonokai",
  "cobalt-2",
  "ever-forest",
}
local theme_selected = themes[1]

local colors = {
  { fg = "#6e6a86", bg = "#000000", bg_alt = "#0D1117" }, -- black
  { fg = "#6e6a86", bg = "#090B10", bg_alt = "#0D1117" }, -- doom-one
  { fg = "#6272A4", bg = "#193549", bg_alt = "#002B37" }, -- cobalt-2
  { fg = "#6e6a86", bg = "#191523", bg_alt = "#211A2F" }, -- rose-pine
  { fg = "#D4C7A9", bg = "#2A3239", bg_alt = "#313D43" }, -- ever-forest
}
vim.g.my_ui_colors = colors[1]

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

require("packer").startup({
  function(use)
    require("set/packer").setup(use)
    require("set/colorizer").setup(use)
    require("set/ctrlsf").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/modes").setup(use)
    require("set/neo-tree").setup(use)
    require("set/f-term").setup(use)
    require("set/git-signs").setup(use)
    require("set/null-ls").setup(use)
    -- require("set/telescope").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-config").setup(use)
    require("themes/" .. theme_selected).setup(use)
    require("set/lua-line").setup(use)

    if packer_bootstrap then
      require("packer").sync()
    end
  end,

  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
      prompt_border = "single",
    },
    git = {
      clone_timeout = 6000, -- seconds
    },
    auto_clean = true,
    compile_on_sync = true,
  },
})

require("core/mappings")
require("core/autocmd")
