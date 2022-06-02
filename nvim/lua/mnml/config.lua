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

-- Add Lsp servers
M.lsp_add = {
  -- "tailwindcss"
  "cssls",
  "html",
  "eslint",
  "volar",
  "tsserver",
}

return M
