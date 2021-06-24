vim.g.python3_host_prog = "/usr/local/bin/python3"
vim.g.node_host_prog = "/usr/local/lib/node_modules/neovim/bin/cli.js"

local install_path = vim.fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
end

vim.cmd("packadd packer.nvim")
vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")

return require("packer").startup({
  function()
    use { "wbthomason/packer.nvim", opt = true }
    use { "nvim-lua/popup.nvim" }
    use { "nvim-lua/plenary.nvim" }
    use { "tpope/vim-commentary" }
    use { "editorconfig/editorconfig-vim" }
    use { "kyazdani42/nvim-web-devicons", config = 'require("config.web-devicons")' }
    use { "norcalli/nvim-colorizer.lua", config = "require('config.colorizer')" }
    use { "kyazdani42/nvim-tree.lua", config = "require('config.tree')" }
    use { "lewis6991/gitsigns.nvim", config = "require('config.git')" }
    use { "akinsho/nvim-toggleterm.lua", config= "require('config.toggle-term')" }
    use { "windwp/nvim-autopairs", config = "require('config.autopairs')" }
    use { "mg979/vim-visual-multi", branch = "master" }
    use { "glepnir/galaxyline.nvim", branch = "main", config = "require('config.galaxy-line')" }
    use { "mbbill/undotree", cmd = "UndotreeToggle", config = "vim.g.undotree_SetFocusWhenToggle = 1" }
    use { "lukas-reineke/indent-blankline.nvim", branch = "lua", config = "require('config.indent-guides')" }
    use { "terrortylor/nvim-comment",  config = "require('nvim_comment').setup()" }
    -- use { 'NTBBloodbath/rest.nvim' }

    -- treesitter
    use { "p00f/nvim-ts-rainbow" }
    use { "windwp/nvim-ts-autotag" }
    use { "nvim-treesitter/nvim-treesitter-refactor" }
    use { "nvim-treesitter/nvim-treesitter-textobjects" }
    use { "sheerun/vim-polyglot", config = "vim.g.vue_pre_processors = {}" }
    use { "lewis6991/spellsitter.nvim", config = "require('config.spellsitter')" }
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", config = 'require("config.treesitter")' }
    
    -- telescope
    use { "nvim-telescope/telescope-fzy-native.nvim" }
    use { "nvim-telescope/telescope.nvim", config = "require('config.telescope')" }
    
    -- snippets
    use { "hrsh7th/vim-vsnip" }
    use { "rafamadriz/friendly-snippets" }
    
    -- lsp
    use { "kabouzeid/nvim-lspinstall" } 
    use { "neovim/nvim-lspconfig", config = "require('config.lsp.config')" }
    use { "hrsh7th/nvim-compe", config = "require('config.lsp.compe')" }
    use { "lukas-reineke/format.nvim", config = "require('config.lsp.format')" }
    use { "folke/trouble.nvim", config = "require('config.lsp.trouble')" }
    
    -- colorscheme
    use {
      "folke/tokyonight.nvim",
      config = function()
        vim.g.tokyonight_style = "night"
        vim.g.tokyonight_transparent = true
        vim.cmd("colorscheme tokyonight")
      end
    }

  end
})
