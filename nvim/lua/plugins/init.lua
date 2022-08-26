local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local function load_plugins()
  require("packer").startup({
    function(use)
      require("plugins.config.packer").setup(use)
      -- require("plugins.config.colorizer").setup(use)
      require("plugins.config.trim").setup(use)
      require("plugins.config.cokeline").setup(use)
      require("plugins.config.autoclose").setup(use)
      require("plugins.config.treesitter").setup(use)
      require("plugins.config.cmp").setup(use)
      require("plugins.config.lsp").setup(use)
      require("plugins.config.signify").setup(use)
      require("plugins.config.tree").setup(use)
      require("plugins.config.fterm").setup(use)
      require("plugins.config.notify").setup(use)
      require("plugins.config.ctrlsf").setup(use)
      require("plugins.config.visualmulti").setup(use)

      require("colors.onedark").setup(use)

      if parcker_bootstrap then
        require("packer").sync()
      end
    end,

    config = {
      display = {
        open_fn = function()
          return require("packer.util").float({ border = vim.g.border_style })
        end,
        prompt_border = vim.g.border_style,
      },
      auto_clean = true,
      compile_on_sync = true,
    },
  })
end

if vim.fn.isdirectory(install_path) == 0 then
  local plugin_path = vim.fn.stdpath("config") .. "/plugin/packer_compiled.lua"
  vim.fn.delete(plugin_path, "rf")
  parcker_bootstrap =  vim.fn.system({
    "git", "clone", "--depth", "20", "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  vim.cmd([[packadd packer.nvim]])
  load_plugins()
 end
