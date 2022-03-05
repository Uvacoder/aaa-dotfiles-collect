return {
  setup = function(use)
    use({
      "mhartington/formatter.nvim",

      config = function()
        -- npm install -g @fsouza/prettierd
        local prettierd = function()
          return {
            exe = "prettierd",
            args = { vim.api.nvim_buf_get_name(0) },
            stdin = true,
          }
        end

        require("formatter").setup({
          logging = false,
          filetype = {
            javascript = { prettierd },
            typescript = { prettierd },
            vue = { prettierd },
            html = { prettierd },
            css = { prettierd },
            scss = { prettierd },
            json = { prettierd },
            svg = { prettierd },
            markdown = { prettierd },
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
