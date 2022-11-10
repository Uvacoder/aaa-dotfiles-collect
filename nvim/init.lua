if vim.fn.has("nvim-0.8") == 0 then
  error("Need Neovim v0.8+ in order to run!")
end

local modules = { "defaults", "options", "plugins", "mappings", "autocmds" }

for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(("Error loading %s...\n\n%s"):format(module, err))
  end
end
