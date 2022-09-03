local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

local function load_plugins()
  require('packer').startup({
    function(use)
      require('config.packer').setup(use)
      -- require("config.colorizer").setup(use)
      require('config.astro').setup(use)
      require('config.trim').setup(use)
      require('config.stylua').setup(use)
      require('config.cokeline').setup(use)
      require('config.autoclose').setup(use)
      require('config.treesitter').setup(use)
      require('config.cmp').setup(use)
      require('config.lsp').setup(use)
      require('config.signify').setup(use)
      require('config.tree').setup(use)
      require('config.fterm').setup(use)
      require('config.notify').setup(use)
      require('config.ctrlsf').setup(use)
      require('config.visualmulti').setup(use)

      require('colors.onedark').setup(use)

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

if vim.fn.isdirectory(install_path) == 0 then
  local plugin_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua'
  vim.fn.delete(plugin_path, 'rf')

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
