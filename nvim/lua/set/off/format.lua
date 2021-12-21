return {
  setup = function(use)
    use({
      "lukas-reineke/format.nvim",

      config = function()
        require("format").setup({
          javascript = { { cmd = { "prettier -w" } } },
          vue = { { cmd = { "prettier -w" } } },
          html = { { cmd = { "prettier -w" } } },
          svg = { { cmd = { "prettier -w" } } },
          css = { { cmd = { "prettier -w" } } },
          json = { { cmd = { "prettier -w" } } },
          sass = { { cmd = { "prettier -w" } } },
        })

        vim.cmd([[
          augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite
          augroup END
        ]])
      end,
    })
  end,
}
