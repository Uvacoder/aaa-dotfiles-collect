vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

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
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "editorconfig/editorconfig-vim"
  use { "kyazdani42/nvim-web-devicons", config = 'require("config.web-devicons")' }
  use { "norcalli/nvim-colorizer.lua", config = "require('config.colorizer')" }
  use { "kyazdani42/nvim-tree.lua", config = "require('config.tree')" }
  use { "lewis6991/gitsigns.nvim", config = "require('config.git')" }
  use { "windwp/nvim-autopairs", config = "require('config.autopairs')" }
  use { "mg979/vim-visual-multi", branch = "master" }
  use { "glepnir/galaxyline.nvim", branch = "main", config = "require('config.galaxy-line')" }
  use { "mbbill/undotree", cmd = "UndotreeToggle", config = "vim.g.undotree_SetFocusWhenToggle = 1" }
  use { "Yggdroot/indentLine", config = "require('config.indent-guides')" }
  use { "terrortylor/nvim-comment",  config = "require('nvim_comment').setup({comment_empty = true})" }
  use { "mattn/emmet-vim", ft = {'html','css','javascript','javascriptreact','vue'}, config = 'require("config.emmet")'  }
  use 'NTBBloodbath/rest.nvim'
  use 'sindrets/diffview.nvim'
  
  -- treesitter
  use "p00f/nvim-ts-rainbow"
  use "windwp/nvim-ts-autotag"
  use "nvim-treesitter/nvim-treesitter-refactor"
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use { "sheerun/vim-polyglot", config = "vim.g.vue_pre_processors = {}" }
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = 'require("config.treesitter")' }
  
  -- telescope
  use "nvim-telescope/telescope-fzy-native.nvim"
  use { "nvim-telescope/telescope.nvim", config = "require('config.telescope')" }

  -- snippets
  use "hrsh7th/vim-vsnip"
  use "rafamadriz/friendly-snippets"

  -- lsp
  use "kabouzeid/nvim-lspinstall"
  use { "neovim/nvim-lspconfig", config = "require('config.lsp.config')" }
  -- use { "glepnir/lspsaga.nvim", config = "require('lspsaga').init_lsp_saga()"}
  use { "hrsh7th/nvim-compe", config = "require('config.lsp.compe')" }
  use { "lukas-reineke/format.nvim", config = "require('config.lsp.format')" }
  use { "folke/trouble.nvim", config = "require('config.lsp.trouble')" }

  -- colorscheme

  use {
    "folke/tokyonight.nvim",
    config = function()
      vim.g.tokyonight_style = "night"
      vim.g.tokyonight_transparent = true
      vim.g.tokyonight_italic_functions = true
      vim.g.tokyonight_hide_inactive_statusline = true
      vim.g.tokyonight_colors = { hint = "orange" }
      vim.cmd("colorscheme tokyonight")
    end
  }

  -- use {
  --   "eddyekofo94/gruvbox-flat.nvim",
  --   config = function()
  --     vim.g.gruvbox_style = "hard"
  --     vim.g.gruvbox_transparent = true
  --     vim.g.gruvbox_italic_functions = true
  --     vim.g.gruvbox_hide_inactive_statusline = true
  --     vim.g.gruvbox_colors = { hint = "orange" }
  --     vim.cmd("colorscheme gruvbox-flat")
  --   end
  -- }

  -- use {
  --   "bluz71/vim-nightfly-guicolors",
  --   config = function()
  --     vim.g.nightflyUnderlineMatchParen = 1
  --     vim.g.nightflyCursorColor = 1
  --     vim.g.nightflyItalics = 1
  --     vim.g.nightflyTransparent = 1
  --     vim.g.nightflyNormalFloat = 1
  --     vim.cmd("colorscheme nightfly")
  --   end
  -- }

end)
