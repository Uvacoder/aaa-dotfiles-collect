-- Install packer
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
  execute 'packadd packer.nvim'
end

local use = require('packer').use
require('packer').startup({
  function()
    use { "wbthomason/packer.nvim" }
    
    use {
      "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = 'require("config.treesitter")',
      requires = {
        { "p00f/nvim-ts-rainbow" },
        { "windwp/nvim-ts-autotag" },
        { "nvim-treesitter/nvim-treesitter-refactor" },
        { "nvim-treesitter/nvim-treesitter-textobjects" },
        { 'JoosepAlviste/nvim-ts-context-commentstring', requires = { "tpope/vim-commentary" }}
      }
    }

    use { "kyazdani42/nvim-web-devicons", config = 'require("config.web-devicons")' }
    use { "mattn/emmet-vim", config = 'require("config.emmet")' }
    use { 'akinsho/nvim-toggleterm.lua', config = "require('config.term')" }
    use { "mg979/vim-visual-multi", branch = "master" }
    use { "norcalli/nvim-colorizer.lua", config = "require('colorizer').setup()" }
    use { "lewis6991/gitsigns.nvim", config = "require('config.git')" }
    use { "windwp/nvim-autopairs", config = "require('config.autopairs')" }
    use { "mbbill/undotree", cmd = "UndotreeToggle", config = "vim.g.undotree_SetFocusWhenToggle = 1" }
    use { "Yggdroot/indentLine", config = "require('config.indent-guides')" } 
    use { "editorconfig/editorconfig-vim" }
    use { 'NTBBloodbath/rest.nvim' }
    use { 'famiu/bufdelete.nvim' } 
    use { 'sindrets/diffview.nvim' }

    use {
      'neovim/nvim-lspconfig', config = "require('config.lsp.config')",
      requires = {
        { 'kabouzeid/nvim-lspinstall', config = "require('config.lsp.install')" },
        { 'ray-x/lsp_signature.nvim' },
        { 'hrsh7th/nvim-compe', config = "require('config.lsp.compe')" },
        -- { "mhartington/formatter.nvim", cmd = "Format", config = "require('config.lsp.format2')"  }
        { "lukas-reineke/format.nvim", config = "require('config.lsp.format')" },
        { "folke/trouble.nvim", config = "require('config.lsp.trouble')" },
        { 'hrsh7th/vim-vsnip', requires = 'rafamadriz/friendly-snippets' }
      }
    }

    use {
      'nvim-telescope/telescope.nvim', config = "require('config.telescope')",
      requires = {
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' },
        { "nvim-telescope/telescope-fzy-native.nvim" }
      }
    }

    use {
      "kyazdani42/nvim-tree.lua", config = "require('config.tree')",
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
      'famiu/feline.nvim', config = "require('config.feline')",
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use { "folke/tokyonight.nvim", config = "require('config.cs.tokyonight')" }
    -- use { "Murtaza-Udaipurwala/gruvqueen", config = "require('config.cs.gruvqueen')" }
    -- use { "tiagovla/tokyodark.nvim", config = "require('config.cs.tokyodark')" }
    -- use { "marko-cerovac/material.nvim", config = "require('config.cs.material')" }
    -- use { "Th3Whit3Wolf/one-nvim", config = "require('config.cs.one-nvim')" }
    -- use { "mhartington/oceanic-next", config = "require('config.cs.oceanic-next')" }
    -- use { "Yagua/nebulous.nvim", config = "require('config.cs.nebulous')" }
    -- use { "bluz71/vim-nightfly-guicolors", config = "require('config.cs.nightfly')" }
    -- use { 'yashguptaz/calvera-dark.nvim', config = "require('config.cs.calvera-dark')" }
    -- use { 'projekt0n/github-nvim-theme', config = "require('config.cs.github')" }

  end,
  config = {
    display = {
      open_fn = require('packer.util').float
    }
  }
})
