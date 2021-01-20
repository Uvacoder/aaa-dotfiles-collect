vim.g.python3_host_prog = '/usr/local/bin/python3'
vim.g.node_host_prog = '/usr/local/lib/node_modules/neovim/bin/cli.js'

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd('packadd packer.nvim')
vim.cmd('autocmd BufWritePost plugins.lua PackerCompile')

return require('packer').startup({
  function()

    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

    -- Nvim Treesitter configurations and abstraction layer
    use {
      'nvim-treesitter/nvim-treesitter',
      config = function()
        require('nvim-treesitter.configs').setup(
          {highlight = {enable = true, use_languagetree = true}},
          {indent = {enable = true}}
        )
      end
    }

    -- themes
    use {
      'mhartington/oceanic-next',
      config = function()
        require('plugins/_fixcolors')
        vim.cmd('colorscheme OceanicNext')
      end
    }

    -- The fastest Neovim colorizer.
    use {
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('colorizer').setup(
          {'*'},
          {names = false})
      end
    }

    -- lua `fork` of vim-web-devicons for neovim
    use 'kyazdani42/nvim-web-devicons'

    -- A file explorer tree for neovim written in lua
    use {
      'kyazdani42/nvim-tree.lua',
      config = function()
        require('plugins/_nvimtree')
      end
    }

    -- A neovim lua plugin to help easily manage multiple terminal windows
    use {
      'numtostr/FTerm.nvim',
      config = function()
        require('plugins/_fterm')
      end
    }

    -- Find, Filter, Preview, Pick. All lua, all the time.
    use {
      'nvim-telescope/telescope.nvim',
      config = function()
        require('plugins/_telescope')
      end,
      requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim'
      }
    }

    -- show git stuff in signcolumn
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('plugins/_gitsigns')
      end
    }

    -- neovim statusline plugin written in lua
    use {
      'glepnir/galaxyline.nvim',
      branch = 'main',
      config = function()
        require('plugins/_galaxyline')
      end
    }

    -- The missing motion for Vim
    use 'justinmk/vim-sneak'

    -- The undo history visualizer for VIM
    use 'mbbill/undotree'

    --  For commmenting stuff out
    use 'tomtom/tcomment_vim'

    --  Intellisense and completion engine
    use {
      'neoclide/coc.nvim',
      branch = 'release',
      config = function()
        require('plugins/_coc')
      end
    }

    -- Check syntax in Vim asynchronously and fix files
    use {
      'dense-analysis/ale',
      config = function()
        require('plugins/_ale')
      end
    }

    -- Plugin to insert or delete brackets, parens, quotes in pair
    use 'jiangmiao/auto-pairs'

    -- Better whitespace highlighting for Vim
    use {
      'ntpeters/vim-better-whitespace',
      config = function()
        require('plugins/_whitespace')
      end
    }

    -- Multiple cursors plugin for vim/neovim
    use {
      'mg979/vim-visual-multi',
      branch = 'master'
    }

    -- A solid language pack for Vim.
    use {
      'sheerun/vim-polyglot',
      config = function()
        vim.g.vue_pre_processors = {}
      end
    }

    -- vim-snipmate default snippets.
    use 'honza/vim-snippets'

  end
})
