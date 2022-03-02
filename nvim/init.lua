require("core/options")

local colorschemes = {
  "cobalt-2", --1
  "doom-one", -- 2
  "gruvbox-flat", -- 3
  "night-fox", -- 4
  "one-dark", -- 5
  "rose-pine", -- 6
  "tokyo-dark", -- 7
  "tokyo-night", -- 8
}

vim.g.my_theme = "themes/" .. colorschemes[4]

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

require("packer").startup({
  function(use)
    require("set/packer").setup(use)
    require("set/impatient").setup(use)
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
    require("set/project").setup(use)
    require("set/telescope").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-config").setup(use)
    require(vim.g.my_theme).setup(use)

    if packer_bootstrap then
      require("packer").sync()
    end
  end,

  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  },
})

require("core/mappings")
require("core/autocmd")
