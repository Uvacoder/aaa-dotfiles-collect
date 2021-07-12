-- Install packer
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup(function()

  use { "wbthomason/packer.nvim", opt = true }

  -- web-devicons
  use { "kyazdani42/nvim-web-devicons", config = 'require("config.web-devicons")' }

  -- lsp-config
  use {
    'neovim/nvim-lspconfig', config = "require('config.lsp.config')",
    requires = {
      { 'kabouzeid/nvim-lspinstall', config = "require('config.lsp.install')" },
      { 'ray-x/lsp_signature.nvim' },
      { 'glepnir/lspsaga.nvim', config = "require('config.lsp.saga')" },
      { 'hrsh7th/nvim-compe', config = "require('config.lsp.compe')" },
      { "folke/trouble.nvim", config = "require('config.lsp.trouble')" },
      { 'hrsh7th/vim-vsnip', requires = 'rafamadriz/friendly-snippets' }
    }
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', config = "require('config.telescope')",
    requires = {
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
      { "nvim-telescope/telescope-fzy-native.nvim" }
    }
  }

  -- nvim-tree
  use {
    "kyazdani42/nvim-tree.lua", config = "require('config.tree')", 
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- bufferline
  use {
    'akinsho/nvim-bufferline.lua', config = "require('config.bufferline')",
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = 'require("config.treesitter")',
    requires = {
      { "p00f/nvim-ts-rainbow" },
      { "windwp/nvim-ts-autotag" },
      { "nvim-treesitter/nvim-treesitter-refactor" },
      { "nvim-treesitter/nvim-treesitter-textobjects" }
    }
  }

  -- emmet
  use {
    "mattn/emmet-vim", ft = {'html','css','javascript','javascriptreact','vue'},
    config = 'require("config.emmet")'
  }
  
  -- feline
    use {
    'famiu/feline.nvim', config = "require('config.feline')",
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { "mg979/vim-visual-multi", branch = "master" }
  use { "norcalli/nvim-colorizer.lua", config = "require'colorizer'.setup()" }
  use { "lewis6991/gitsigns.nvim", config = "require('config.git')" }
  use { "windwp/nvim-autopairs", config = "require('config.autopairs')" }
  -- use { "glepnir/galaxyline.nvim", branch = "main", config = "require('config.galaxy-line')" }
  use { "mbbill/undotree", cmd = "UndotreeToggle", config = "vim.g.undotree_SetFocusWhenToggle = 1" }
  use { "lukas-reineke/indent-blankline.nvim", config = "require('config.indent-guides')" }
  use { "terrortylor/nvim-comment",  config = "require('nvim_comment').setup({comment_empty = true})" }
  use { "editorconfig/editorconfig-vim" }
  use { 'NTBBloodbath/rest.nvim' }
  use { 'sindrets/diffview.nvim' }

  -- colorscheme
  use { "folke/tokyonight.nvim", config = "require('config.cs.tokyonight')" }
  -- use { "eddyekofo94/gruvbox-flat.nvim", config = "require('config.cs.gruvbox-flat')" }
  -- use { "bluz71/vim-nightfly-guicolors", config = "require('config.nightfly')" }
  -- use { "mhartington/oceanic-next", config = "require('config.oceanic-next')" }
end)
