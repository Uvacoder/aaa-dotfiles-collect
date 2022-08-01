vim.g.mnml = {
  ui = {
    theme = "cobalt2", -- "dracula"
    border = "single", -- "rounded", "single", "double"
    colors = {
      info = "#0088FF",
      success = "#95EC30",
      warning = "#FFC600",
      error = "#FF0069",
      hint = "#A400FF",
      fg = "#cbd5e1",
      bg  = '#0D1117'
    },
  },
  lsp = {
    servers = {
      "volar",
      "tsserver",
      "eslint",
      -- "cssls",
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
      -- "typescript",
      "vue",
      "jsx",
      "javascriptreact",
      -- "typescriptreact",
      -- "tsx",
    }
  }
}
