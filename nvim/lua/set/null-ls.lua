return {
  setup = function(use)
    use({
      "jose-elias-alvarez/null-ls.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics
        null_ls.setup({
          sources = {
            formatting.prettier.with({ prefer_local = "node_modules/.bin" }),
            diagnostics.eslint.with({ prefer_local = "node_modules/.bin" }),
            formatting.stylua,
          },
          on_attach = function(client)
            vim.cmd([[command! Format execute 'lua vim.lsp.buf.format({ async = true })']])
            --   -- if client.server_capabilities.document_formatting then
            --   -- auto format on save (not asynchronous)
            --   local LspFormattingGrp = vim.api.nvim_create_augroup("LspFormattingGrp", { clear = true })
            --   vim.api.nvim_create_autocmd("BufWritePre", {
            --     command = "lua vim.lsp.buf.format({ timeout_ms = 2000 })",
            --     group = LspFormattingGrp,
            --   })
            -- end,
          end,
        })
      end,
    })
  end,
}
