local M = {}

-- UI
M.ui = {
  theme = "one-dark",
  border = "double", -- "rounded", "single", "double"
  colors = {
    blue = "#00AAFF",
    green = "#95EC30",
    yellow = "#FFC600",
    red = "#FF0069",
    white = "#cbd5e1",
  },
}

-- Add Treesitter langs
M.treesitter_langs = {
  "css",
  "lua",
  "html",
  "vue",
  "javascript",
  "json",
  "typescript",
  -- "regex",
}

-- M.treesitter_autotags = {
--   "html",
--   "javascript",
--   "typescript",
--   "vue",
--   "jsx",
--   "javascriptreact",
--   "typescriptreact",
--   "tsx",
-- }

-- Add Lsp servers
M.lsp_servers = {
  "cssls",
  "volar",
  "tsserver",
  "eslint",
  -- "html",
  -- "tailwindcss"
}

return M
