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
          lua = { { cmd = { "stylua %s " } } },
          markdown = {
            { cmd = { "prettier -w" } },
            {
              cmd = { "black" },
              start_pattern = "^```python$",
              end_pattern = "^```$",
              target = "current",
            },
          },
        })

        vim.api.nvim_exec(
          [[
          augroup FormatAutogroup
          autocmd!
          autocmd BufWritePost *.html,*.js,*.vue,*.css,*.json,*.svg FormatWrite
          augroup END
        ]],
          true
        )
      end,
    })
  end,
}
