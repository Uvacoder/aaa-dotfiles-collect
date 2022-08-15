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
		require("mnml.plugins.config.cokeline").setup(use)
    require("mnml.plugins.config.autopairs").setup(use)
    require("mnml.plugins.config.treesitter").setup(use)
    require("mnml.plugins.config.cmp").setup(use)
    require("mnml.plugins.config.lsp").setup(use)
    require("mnml.plugins.config.signify").setup(use)
    require("mnml.plugins.config.neotree").setup(use)
    require("mnml.plugins.config.fterm").setup(use)
    require("mnml.plugins.config.notify").setup(use)
    require("mnml.plugins.config.ctrlsf").setup(use)
    require("mnml.plugins.config.visualmulti").setup(use)
    -- require("mnml.plugins.disabled.colorizer").setup(use)
    require("mnml.plugins.config.colors.darcula").setup(use)

    -- use({
    --     'rose-pine/neovim',
    --     as = 'rose-pine',
    --     tag = 'v1.*',
    --     config = function()
    --       local bgColor = "#0D1117" -- "#101116" -- "#14151c" -- "#1b1c25" -- "#0f0f0f" --- "#0c1923"
    --
    --       require('rose-pine').setup({
    --         dark_variant = 'main', -- main | moon
    --         groups = {
    -- 		          background = bgColor,
    --           main = {
    --             Rose = "#EE6D85",
    --             Foam = "#38A89D",
    --             Iris = "#AE81FF",
    --             rose = "#EE6D85",
    --             foam = "#38A89D",
    --             iris = "#AE81FF",
    --           }
    --         },
    --         highlight_groups = {
    --           TabLineFill = { bg = bgColor },
    --           TabLineSel = { bg = bgColor },
    --           NeoTreeCursorLine = { bg = 'Overlay' },
    --           FloatBorder = { bg = 'Surface' },
    --           NeoTreeNormal = { bg = 'Surface' },
    --           NeoTreeNormalNC = { bg = 'Surface' }
    --         }
    --       })
    --       vim.cmd('colorscheme rose-pine')
    --     end
    -- })

    -- Automatically set up your configuration after cloning packer.nvim
    if result.first_install then
      require("packer").sync()
    end
  end,
})
