vim.g.mnml = {
  ui = {
    border = "single", -- "rounded", "single", "double"
    colors = {
      info = "#0088FF",
      success = "#95EC30",
      warning = "#FFC600",
      error = "#FF0069",
      fg = "#cbd5e1",
      bg  = '#0D1117'
    },
  },
  lsp = {
    servers = {
      -- "cssls",
      "volar",
      "tsserver",
      "eslint",
      -- "html",
      -- "tailwindcss"
    }
  },
  treesitter= {
    langs = {
      "css",
      "lua",
      "html",
      "vue",
      "javascript",
      "json",
      "typescript"
    },
    autotags = {
      "html",
      "javascript",
      "typescript",
      "vue",
      "jsx",
      "javascriptreact",
      "typescriptreact",
      "tsx",
    }
  }
}
