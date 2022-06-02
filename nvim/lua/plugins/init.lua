local initialized, result = pcall(require, "plugins.init-parker")

if not initialized then
  return false
end

local packer = result.packer
local use = packer.use

-- Install your plugins here
return packer.startup({
  function(use)
    require("plugins.config.packer").setup(use)
    require("plugins.config.notify").setup(use)
    require("plugins.config.bujo").setup(use)
    -- require("plugins.config.colorizer").setup(use)
    -- require("plugins.config.trouble").setup(use)
    require("plugins.config.ctrlsf").setup(use)
    require("plugins.config.visual-multi").setup(use)
    require("plugins.config.auto-pairs").setup(use)
    require("plugins.config.modes").setup(use)
    require("plugins.config.neo-tree").setup(use)
    require("plugins.config.lua-line").setup(use)
    require("plugins.config.f-term").setup(use)
    require("plugins.config.coke-line").setup(use)
    require("plugins.config.git-signs").setup(use)
    require("plugins.config.formatter").setup(use)
    require("plugins.config.indent-blank-line").setup(use)
    require("plugins.config.tree-sitter").setup(use)
    require("plugins.config.cmp").setup(use)
    require("plugins.config.lsp").setup(use)
    require("themes/" .. vim.g.my.theme).setup(use)

    -- Automatically set up your configuration after cloning packer.nvim
    if result.first_install then
      require("packer").sync()
    end
  end,
})
