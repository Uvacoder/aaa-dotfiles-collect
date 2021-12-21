return {
  setup = function(use)
    use({
      "mhartington/formatter.nvim",

      config = function()
        local prettier = function()
          return {
            exe = "prettier",
            args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)) },
            stdin = true,
          }
        end

        require("formatter").setup({
          logging = false,
          filetype = {
            javascript = { prettier },
            typescript = { prettier },
            vue = { prettier },
            html = { prettier },
            css = { prettier },
            scss = { prettier },
            json = { prettier },
            svg = { prettier },
            markdown = { prettier },
            lua = {
              function()
                return {
                  exe = "stylua",
                  args = { "--quote-style", "AutoPreferDouble", "--column-width", 200, "--indent-width", 2, "--indent-type", "Spaces" },
                  stdin = false,
                }
              end,
            },
          },
        })

        vim.cmd([[
          augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.lua,*.html,*.js,*.vue,*.css,*.json,*.ts,*.scss,*svg FormatWrite
          augroup END
        ]])
      end,
    })
  end,
}
