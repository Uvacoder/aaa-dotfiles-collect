local M = {}

-- UI
M.ui = {
  theme = "one-dark",
  border = "double", -- "rounded", "single", "double"
  colors = {
    blue = "#52A0FF",
    green = "#84b360",
    yellow = "#d9c97c",
    red = "#ff7ab2",
    white = "#cbd5e1",
    float = "#161926",
    statusline = "#08080D",
    bg = "#000000",
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
  "regex",
}

M.treesitter_autotags = {
  "html",
  "javascript",
  "typescript",
  "vue",
  "jsx",
  -- "javascriptreact",
  -- "typescriptreact",
  -- "tsx",
}

-- Add Lsp servers
M.lsp_servers = {
  "cssls",
  "html",
  "eslint",
  "volar",
  "tsserver",
  -- "tailwindcss"
}

return M
