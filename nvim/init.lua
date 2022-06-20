vim.g.my = {
  theme = "onedark",
  border = "rounded", -- "rounded", "single", "double"
  colors = {
    blue = "#52A0FF",
    green = "#84b360",
    yellow = "#d9c97c",
    red = "#ff7ab2",
    white = "#cbd5e1",
  },
}

if vim.fn.has("nvim-0.7") == 0 then
  error("Need Neovim v0.7+ in order to run MNML!")
end

local modules = {
  "mnml.core.options",
  "mnml.plugins",
  "mnml.core.mappings",
  "mnml.core.autocmds",
}

for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(("Error loading %s...\n\n%s"):format(module, err))
  end
end
