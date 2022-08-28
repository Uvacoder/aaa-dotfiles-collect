-- vim.g.loaded_perl_provider = 0
-- vim.g.loaded_ruby_provider = 0
-- vim.g.loaded_python_provider = 0
--
-- vim.g.python3_host_prog = '/opt/local/bin/python3'
-- vim.g.node_host_prog = '/opt/local/lib/node_modules/neovim/bin/cli.js'

vim.g.border_style = 'rounded' -- "rounded", "single", "double"

vim.g.speeddating_no_mappings = 1 --- Disable default mappings for speeddating

-- opt. them directly if they are installed, otherwise disable them. To avoid the then
-- runtime check cost, which can be slow.
-- Python This must be here becasue it makes loading vim VERY SLOW otherwise
vim.g.python_host_skip_check = 1
-- Disable python2 provider
vim.g.loaded_python_provider = 0

vim.g.python3_host_skip_check = 1

if vim.fn.executable('python3') == 1 then
  -- set the default python PATH, to supposedly boost 🏎  performance
  vim.g.python3_host_prog = vim.fn.exepath('python3')
else
  vim.g.loaded_python3_provider = 0
end

if vim.fn.executable('neovim-node-host') == 1 then
  vim.g.node_host_prog = vim.fn.exepath('neovim-node-host')
else
  vim.g.loaded_node_provider = 0
end

if vim.fn.executable('neovim-ruby-host') == 1 then
  vim.g.ruby_host_prog = vim.fn.exepath('neovim-ruby-host')
else
  vim.g.loaded_ruby_provider = 0
end

vim.g.loaded_perl_provider = 0

local default_plugins = {
  '2html_plugin',
  'getscript',
  'getscriptPlugin',
  'gzip',
  'logipat',
  'netrw',
  'netrwPlugin',
  'netrwSettings',
  'netrwFileHandlers',
  'matchit',
  'tar',
  'tarPlugin',
  'rrhelper',
  'spellfile_plugin',
  'vimball',
  'vimballPlugin',
  'zip',
  'zipPlugin',
  'tutor',
  'rplugin',
  'syntax',
  'synmenu',
  'optwin',
  'compiler',
  'bugreport',
  'ftplugin',
}

for _, plugin in pairs(default_plugins) do
  vim.g['loaded_' .. plugin] = 1
end
