local fn = vim.fn
local api = vim.api
local cmd = vim.cmd
local g = vim.g

g.python3_host_prog = '/usr/local/bin/python3'
g.node_host_prog = '/usr/local/lib/node_modules/neovim/bin/cli.js'
-- g.loaded_perl_provider = 0
-- g.loaded_python_provider = 0
-- g.loaded_ruby_provider = 0

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

cmd('packadd packer.nvim')

cmd('autocmd BufWritePost plugins.lua PackerCompile')

return require('packer').startup({
  function()

    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

    -- themes
    use 'pineapplegiant/spaceduck'
    use 'kyazdani42/nvim-palenight.lua'
    use 'mhartington/oceanic-next'

    -- Nvim Treesitter configurations and abstraction layer
    use {
      'nvim-treesitter/nvim-treesitter',
      config = function() require('plugins/_treesitter') end
    }

    -- Lua Development for Neovim
    use {
      'tjdevries/nlua.nvim',
      requires = 'CurtisFenner/luafmt'
    }

    -- The fastest Neovim colorizer.
    use {
      'norcalli/nvim-colorizer.lua',
      config = function() require('plugins/_colorizer') end
    }

    -- lua `fork` of vim-web-devicons for neovim
    use 'kyazdani42/nvim-web-devicons'

    -- A file explorer tree for neovim written in lua
    use {
      'kyazdani42/nvim-tree.lua',
      config = function() require('plugins/_nvimtree') end
    }

    -- A neovim lua plugin to help easily manage multiple terminal windows
    use {
      'numtostr/FTerm.nvim',
      config = function() require('plugins/_fterm') end
    }

    -- Find, Filter, Preview, Pick. All lua, all the time.
    use {
      'nvim-telescope/telescope.nvim',
      config = function() require('plugins/_telescope') end,
      requires = { 'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim' }
    }

    -- faster sorter algo for telescope
    use {
      'nvim-telescope/telescope-fzy-native.nvim',
      requires = 'nvim-telescope/telescope.nvim'
    }

    -- show git stuff in signcolumn
    use {
      'lewis6991/gitsigns.nvim',
      config = function() require('plugins/_gitsigns') end,
      requires = 'nvim-lua/plenary.nvim'
    }

    -- neovim statusline plugin written in lua
    use {
      'glepnir/galaxyline.nvim', branch = 'main',
      config = function() require('plugins/_galaxyline') end,
      requires = { 'kyazdani42/nvim-web-devicons','lewis6991/gitsigns.nvim' }
    }

    -- NeoVim Indent Guides
    use {
      'glepnir/indent-guides.nvim', opt = true,
      config = function() require('plugins/_indentguides') end
    }

    -- The missing motion for Vim
    use 'justinmk/vim-sneak'

    -- The undo history visualizer for VIM
    use 'mbbill/undotree'

    --  For commmenting stuff out
    use 'tomtom/tcomment_vim'

    -- A Git wrapper so awesome, it should be illegal
    use 'tpope/vim-fugitive'

    --  Intellisense and completion engine
    use {
      'neoclide/coc.nvim', branch = 'release',
      config = function() require('plugins/_coc') end
    }

    use {
      'dense-analysis/ale',
      config = function() require('plugins/_ale') end
    }

    -- Plugin to insert or delete brackets, parens, quotes in pair
    use 'jiangmiao/auto-pairs'

    -- Better whitespace highlighting for Vim
    use {
      'ntpeters/vim-better-whitespace',
      config = function() require('plugins/_whitespace') end
    }

    -- Multiple cursors plugin for vim/neovim
    use { 'mg979/vim-visual-multi', branch = 'master' }

    -- A solid language pack for Vim.
    use {
      'sheerun/vim-polyglot',
      config = function() require('plugins/_vimpolyglot') end
    }

    -- vim-snipmate default snippets.
    use 'honza/vim-snippets'

  end
})
