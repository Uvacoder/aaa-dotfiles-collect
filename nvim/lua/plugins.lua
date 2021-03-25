-- Disable netrw.
vim.g.loaded_netrw  = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1

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
    use "nvim-treesitter/nvim-treesitter"
    use "p00f/nvim-ts-rainbow"
    -- themes
    use 'mhartington/oceanic-next'
    -- The fastest Neovim colorizer.
    use "norcalli/nvim-colorizer.lua"
    -- lua `fork` of vim-web-devicons for neovim
    use "kyazdani42/nvim-web-devicons"
    -- A file explorer tree for neovim written in lua
    use "kyazdani42/nvim-tree.lua"
    -- telescope
    use "nvim-telescope/telescope-fzy-native.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    -- show git stuff in signcolumn
    use "lewis6991/gitsigns.nvim"
    -- For commmenting stuff out
    use "tomtom/tcomment_vim"
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
    use "honza/vim-snippets"
    -- neovim statusline plugin written in lua
    use 'hoob3rt/lualine.nvim'
  end
})
