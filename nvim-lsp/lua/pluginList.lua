
local install_path = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim "..install_path)
end

vim.cmd("packadd packer.nvim")
vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")


local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- theme stuff
        use "siduck76/nvim-base16.lua"

        -- lang stuff
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-compe"
        use "kabouzeid/nvim-lspinstall"
        use "sbdchd/neoformat"
        use "onsails/lspkind-nvim"

        use "nvim-lua/plenary.nvim"
        use "nvim-treesitter/nvim-treesitter"
        use "lewis6991/gitsigns.nvim"
        use "glepnir/galaxyline.nvim"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"

        -- snippet support
        use "hrsh7th/vim-vsnip"
        use "rafamadriz/friendly-snippets"

        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-lua/popup.nvim"

        -- misc
        use "norcalli/nvim-colorizer.lua"
        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    end
)
