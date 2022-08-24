local initialized, result = pcall(require, "plugins.install-parker")
if not initialized then
  return false
end

local packer = result.packer
local use = packer.use

-- Install your plugins here
return packer.startup({
  function(use)
    require("plugins.config.packer").setup(use)
    -- require("plugins.config.colorizer").setup(use)
		require("plugins.config.cokeline").setup(use)
    require("plugins.config.autoclose").setup(use)
    require("plugins.config.treesitter").setup(use)
    require("plugins.config.cmp").setup(use)
    require("plugins.config.lsp").setup(use)
    require("plugins.config.signify").setup(use)
    require("plugins.config.neotree").setup(use)
    require("plugins.config.fterm").setup(use)
    require("plugins.config.notify").setup(use)
    require("plugins.config.ctrlsf").setup(use)
    require("plugins.config.visualmulti").setup(use)

    require("colors.onedark").setup(use)

    -- Automatically set up your configuration after cloning packer.nvim
    if result.first_install then
      require("packer").sync()
    end
  end,
})
