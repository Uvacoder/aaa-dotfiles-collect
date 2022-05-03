return {
  setup = function(use)
    use({
      "mhartington/formatter.nvim",
      config = function()
        -- local prettier = function()
        --   return {
        --     exe = "prettier",
        --     args = { "--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), "--single-quote" },
        --     stdin = true,
        --   }
        -- end

        -- local eslint = function()
        --   return {
        --     exe = "eslint",
        --     args = { "--fix", "--no-ignore", "--stdin-filename", vim.api.nvim_buf_get_name(0) },
        --     stdin = false,
        --   }
        -- end

        -- npm install -g @fsouza/prettierd
        local prettierd = function()
          return {
            exe = "prettierd",
            args = { vim.api.nvim_buf_get_name(0) },
            stdin = true,
          }
        end

        -- npm install -g eslint_d
        -- local eslint_d = function()
        --   return {
        --     exe = "eslint_d",
        --     args = { "--stdin", "--stdin-filename", vim.api.nvim_buf_get_name(0), "--fix-to-stdout" },
        --     stdin = true,
        --   }
        -- end

        local luafmt = function()
          return {
            exe = "stylua",
            args = { "--quote-style", "AutoPreferDouble", "--column-width", 200, "--indent-width", 2, "--indent-type", "Spaces" },
            stdin = false,
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
            lua = { luafmt },
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
