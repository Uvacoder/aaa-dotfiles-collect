if vim.fn.has('nvim-0.7') == 0 then
  error('Need Neovim v0.7+ in order to run!')
end

local modules = { 'settings', 'options', 'plugins', 'mappings', 'autocmds' }

for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(('Error loading %s...\n\n%s'):format(module, err))
  end
end
