local initialized, result = pcall(require, "mnml.plugins.init-parker")

if not initialized then
  return false
end

local packer = result.packer
local use = packer.use

-- Install your plugins here
return packer.startup({
  function(use)
    require("mnml.plugins.config.packer").setup(use)
    require("mnml.plugins.config.notify").setup(use)
    require("mnml.plugins.config.bujo").setup(use)
    -- require("mnml.plugins.config.colorizer").setup(use)
    -- require("mnml.plugins.config.trouble").setup(use)
    require("mnml.plugins.config.ctrlsf").setup(use)
    require("mnml.plugins.config.visual-multi").setup(use)
    require("mnml.plugins.config.auto-pairs").setup(use)
    require("mnml.plugins.config.modes").setup(use)
    require("mnml.plugins.config.neo-tree").setup(use)
    require("mnml.plugins.config.lua-line").setup(use)
    require("mnml.plugins.config.f-term").setup(use)
    require("mnml.plugins.config.coke-line").setup(use)
    require("mnml.plugins.config.git-signs").setup(use)
    require("mnml.plugins.config.formatter").setup(use)
    require("mnml.plugins.config.indent-blank-line").setup(use)
    require("mnml.plugins.config.tree-sitter").setup(use)
    require("mnml.plugins.config.cmp").setup(use)
    require("mnml.plugins.config.lsp").setup(use)
    require("mnml.plugins.config.one-dark").setup(use)

    -- Automatically set up your configuration after cloning packer.nvim
    if result.first_install then
      require("packer").sync()
    end
  end,
})
