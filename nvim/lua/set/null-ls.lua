return {
  setup = function(use)
    use({
      "jose-elias-alvarez/null-ls.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        -- sudo npm install -g @fsouza/prettierd eslint_d
        local null_ls = require("null-ls")
        -- local formatting = null_ls.builtins.formatting
        local diagnostics = null_ls.builtins.diagnostics
        null_ls.setup({
          sources = {
            diagnostics.eslint,
            -- diagnostics.eslint_d,
            -- formatting.stylua,
            -- formatting.prettierd,
          },
        })
      end,
    })
  end,
}
