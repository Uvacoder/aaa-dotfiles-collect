local function load_plugins()
  require('packer').startup({
    function(use)
      require('plugins.packer').setup(use)
      require('colors.onedark').setup(use)
      -- require('plugins.old.styluaFmt').setup(use)
      require('plugins.colorizer').setup(use)
      require('plugins.indentline').setup(use)
      require('plugins.modes').setup(use)
      require('plugins.bufferline').setup(use)
      require('plugins.toggleterm').setup(use)
      require('plugins.gitsigns').setup(use)
      require('plugins.openingh').setup(use)
      require('plugins.autopairs').setup(use)
      require('plugins.neotree').setup(use)
      require('plugins.notify').setup(use)
      require('plugins.ctrlsf').setup(use)
      require('plugins.visualmulti').setup(use)
      require('plugins.kommentary').setup(use)
      require('plugins.treesitter').setup(use)
      require('plugins.autotag').setup(use)
      require('plugins.lspzero').setup(use)

      if parcker_bootstrap then
        require('packer').sync()
      end
    end,

    config = {
      display = {
        open_fn = function()
          return require('packer.util').float({ border = vim.g.border_style })
        end,
        prompt_border = vim.g.border_style,
      },
      auto_clean = true,
      compile_on_sync = true,
    },
  })
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.isdirectory(install_path) == 0 then
  vim.fn.delete(vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua', 'rf')

  parcker_bootstrap = vim.fn.system({
    'git',
    'clone',
    '--depth',
    '20',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })

  vim.cmd([[packadd packer.nvim]])
end

load_plugins()
