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
    require("mnml.plugins.config.trouble").setup(use)
    require("mnml.plugins.config.cokeline").setup(use)
    require("mnml.plugins.config.autopairs").setup(use)
    require("mnml.plugins.config.treesitter").setup(use)
    require("mnml.plugins.config.cmp").setup(use)
    require("mnml.plugins.config.lsp").setup(use)
    require("mnml.plugins.config.neotree").setup(use)
    require("mnml.plugins.config.fterm").setup(use)
    require("mnml.plugins.config.notify").setup(use)
    require("mnml.plugins.config.ctrlsf").setup(use)
    require("mnml.plugins.config.visualmulti").setup(use)
    -- require("mnml.plugins.config.colors.rose-pine").setup(use)
    require("mnml.plugins.config.colors.cobalt2").setup(use)

    -- Automatically set up your configuration after cloning packer.nvim
    if result.first_install then
      require("packer").sync()
    end
  end,
})
