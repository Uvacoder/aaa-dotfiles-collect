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
    -- Packer can manage itself as an optional plugin
    use { "wbthomason/packer.nvim", opt = true }
    -- Nvim Treesitter configurations and abstraction layer
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use "p00f/nvim-ts-rainbow"
    use 'JoosepAlviste/nvim-ts-context-commentstring'
    use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
    -- themes
    use 'mhartington/oceanic-next'
    -- The fastest Neovim colorizer.
    use "norcalli/nvim-colorizer.lua"
    -- lua `fork` of vim-web-devicons for neovim
    use "kyazdani42/nvim-web-devicons"
    -- A file explorer tree for neovim written in lua
    use "kyazdani42/nvim-tree.lua"
    -- telescope
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-fzy-native.nvim"
    -- show git stuff in signcolumn
    use "lewis6991/gitsigns.nvim"
    -- For commmenting stuff out
    use "tpope/vim-commentary"
    -- Intellisense and completion engine
    use { "neoclide/coc.nvim", branch = "release" }
    -- Check syntax in Vim asynchronously and fix files
    use "dense-analysis/ale"
    -- autopairs for neovim written by lua
    use "windwp/nvim-autopairs"
    -- Multiple cursors plugin for vim/neovim
    use { "mg979/vim-visual-multi", branch = "master" }
    -- A solid language pack for Vim.
    use "sheerun/vim-polyglot"
    -- vim-snipmate default snippets.
    -- use "honza/vim-snippets"
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    -- use 'hollowtree/vscode-vue-snippets'
    -- neovim statusline plugin written in lua
    use 'hoob3rt/lualine.nvim'
  end
})
