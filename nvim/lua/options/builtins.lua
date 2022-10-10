local g = vim.g

-- Disabling some built in plugins
local builtins = {
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
  'tutor',
  'tarPlugin',
  'rrhelper',
  'vimball',
  'vimballPlugin',
  'zip',
  'zipPlugin',
  'tutor_mode_plugin',
  'fzf',
  'spellfile_plugin',
}

for _, plugin in ipairs(builtins) do
  g['loaded_' .. plugin] = 1
end
