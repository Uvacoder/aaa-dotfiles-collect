return {
  setup = function(use)
    use({
      "mhartington/formatter.nvim",
      config = function()
        local util = require("formatter.util")
        require("formatter").setup({
          filetype = {
            -- javascript = {
            --   require("formatter.filetypes.javascript").prettierd,
            -- },
            -- vue = {
            --   require("formatter.filetypes.javascript").prettierd,
            -- },
            lua = {
              function()
                return {
                  exe = "stylua",
                  args = {
                    "--quote-style",
                    "AutoPreferDouble",
                    "--column-width",
                    120,
                    "--indent-width",
                    2,
                    "--indent-type",
                    "Spaces",
                  },
                  stdin = false,
                }
              end,
            },
          },
        })

        -- Manual Format command
        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>Format<cr>", opts)

        -- Format and write after save asynchronously
        local formatter_augroup = vim.api.nvim_create_augroup("formatter", { clear = true })
        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
          pattern = "*.lua",
          command = "silent! FormatWrite",
          group = formatter_augroup,
        })

        -- Eslint Fix All
        vim.api.nvim_create_autocmd({ "BufWritePost" }, {
          pattern = "*",
          command = "silent! EslintFixAll",
          group = formatter_augroup,
        })
      end,
    })
  end,
}
