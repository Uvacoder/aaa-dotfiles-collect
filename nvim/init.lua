vim.g.my = {
  theme = "onedark",
  border = "single", -- "rounded", "single", "double"
  colors = {
    blue = "#00AAFF",
    green = "#95EC30",
    yellow = "#FFC600",
    red = "#FF0069",
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
