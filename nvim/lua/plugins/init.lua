local function load_plugins()
  require("packer").startup({
    function(use)
      require("plugins.packer").setup(use)
      require("plugins.colorschemes.tokyonight").setup(use)
      -- require("plugins.colorschemes.dracula").setup(use)
      require("plugins.stylua").setup(use)
      require("plugins.colorizer").setup(use)
      -- require("plugins.modes").setup(use)
      require("plugins.statusline").setup(use)
      require("plugins.bufferline").setup(use)
      require("plugins.terminal").setup(use)
      require("plugins.gitsigns").setup(use)
      require("plugins.tree").setup(use)
      require("plugins.notify").setup(use)
      require("plugins.ctrlsf").setup(use)
      require("plugins.visualmulti").setup(use)
      require("plugins.treesitter").setup(use)
      require("plugins.autopairs").setup(use)
      require("plugins.autotag").setup(use)
      require("plugins.matchup").setup(use)
      require("plugins.Comment").setup(use)
      require("plugins.lsp").setup(use)

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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if vim.fn.isdirectory(install_path) == 0 then
  vim.fn.delete(vim.fn.stdpath("config") .. "/plugin/packer_compiled.lua", "rf")

  parcker_bootstrap = vim.fn.system({
    "git",
    "clone",
    "--depth",
    "20",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })

  vim.cmd([[packadd packer.nvim]])
end

load_plugins()
