require("core/options")

local themes = { "cobalt-2", "doom-one", "one-dark", "rose-pine", "tokyo-dark", "tokyo-night" }
local theme_selected = themes[4]

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

require("packer").startup({
  function(use)
    require("set/packer").setup(use)
    -- require("set/notify").setup(use)
    -- require("set/colorizer").setup(use)
    require("set/ctrlsf").setup(use)
    require("set/visual-multi").setup(use)
    require("set/auto-pairs").setup(use)
    require("set/tree").setup(use)
    require("set/toggle-term").setup(use)
    require("set/git-signs").setup(use)
    require("set/stylua").setup(use)
    require("set/telescope").setup(use)
    require("set/indent-blank-line").setup(use)
    require("set/tree-sitter").setup(use)
    require("set/cmp").setup(use)
    require("set/lsp-config").setup(use)
    require("set/modes").setup(use)
    require("set/trouble").setup(use)

    require("themes/" .. theme_selected).setup(use)

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

require("core/mappings")
require("core/autocmd")
