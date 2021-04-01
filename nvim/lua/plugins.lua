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
    
    use "tjdevries/nlua.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "p00f/nvim-ts-rainbow"

    use {
      "nvim-treesitter/nvim-treesitter", 
      run = ":TSUpdate",
      config = [[ require('config.treesitter') ]],
      requires = { "sheerun/vim-polyglot", config = [[ vim.g.vue_pre_processors = {} ]] }
    }
    
    use {
      "JoosepAlviste/nvim-ts-context-commentstring",
      requires = "tpope/vim-commentary"
    }
    
    use {
      "lukas-reineke/indent-blankline.nvim", branch = "lua",
      config = [[ require('config.indent') ]]
    }
    
    use {
      "mhartington/oceanic-next",
      config = [[ require('config.colorscheme') ]]
    }
    
    use {
      "norcalli/nvim-colorizer.lua",
      config = [[ require('config.colorizer')]]
    }

    use {
      "kyazdani42/nvim-tree.lua",
      config = [[ require('config.tree') ]]
    }

    use {
      "nvim-telescope/telescope.nvim",
      config = [[ require('config.telescope') ]],
      requires = "nvim-telescope/telescope-fzy-native.nvim"
    }

    use {
      'tpope/vim-fugitive', 
      cmd = {'Gstatus', 'Gdiffsplit', 'GBrowser', 'Gblame', 'Gpush', 'Gpull'}
    }

    use {
      "lewis6991/gitsigns.nvim",
      config = [[ require('config.git') ]]
    }

    use { 
      "neoclide/coc.nvim", branch = "release",
      config = [[ require('config.coc') ]]
    }

    use {
      "dense-analysis/ale",
      config = [[ require('config.ale') ]]
    }
    
    use {
      "windwp/nvim-autopairs",
      config = [[ require('config.autopairs') ]]
    }

    use { "mg979/vim-visual-multi", branch = "master" }
    
    use {
      "honza/vim-snippets",
      "hollowtree/vscode-vue-snippets"
    }

    use {
      "hoob3rt/lualine.nvim",
      config = [[ require('config.lualine') ]]
    }

    use {
      'mbbill/undotree',
      cmd = 'UndotreeToggle',
      config = [[ vim.g.undotree_SetFocusWhenToggle = 1 ]]
    }
  
  end
})
