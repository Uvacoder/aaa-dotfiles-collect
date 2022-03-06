local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end

require("packer").startup({
  function(use)
    require("set/packer").setup(use)
    require("set/notify").setup(use)
    require("set/impatient").setup(use)
    require("set/battery").setup(use)
    require("set/colorizer").setup(use)
    require("set/ctrlsf").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/tree").setup(use)
    require("set/toggle-term").setup(use)
    require("set/git-signs").setup(use)
    require("set/stylua").setup(use)
    require("set/project").setup(use)
    require("set/telescope").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-config").setup(use)
    require("themes/" .. vim.g.my_themes[vim.g.my_theme_selected]).setup(use)
    require("set/modes").setup(use)
    require("set/trouble").setup(use)
    require("set/lua-line").setup(use)
    require("set/buffer-line").setup(use)

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
